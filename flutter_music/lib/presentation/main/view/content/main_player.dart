part of '../main_view.dart';

class MainPlayer extends StatefulWidget {
  MainPlayer({Key? key}) : super(key: key);

  @override
  MainPlayerState createState() => MainPlayerState();
}

class MainPlayerState extends State<MainPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    /**use dummy first**/
    _controller = VideoPlayerController.network("https://dummy")..initialize();
    _controller.pause();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) => _containerPlayer(context, state),
    );
  }

  Widget _containerPlayer(BuildContext context, MainState state) {
    if (state.isShowPlayer && !state.isPause && !state.isAlreadyInit) {
      setTrack(state.data[state.position].previewUrl);
    }else if(state.isAlreadyInit && !state.isPause){
      _controller.play();
    }

    return Container(
      color: Colors.white70,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () => context.read<MainBloc>().add(MainPrevMusic()),
          ),
          IconButton(
              icon: Icon(
                state.isPause ? Icons.pause : Icons.play_arrow,
              ),
              onPressed: () {
                checkIsPause();
              }),
          IconButton(
              icon: Icon(Icons.skip_next),
              onPressed: () => context.read<MainBloc>().add(MainNextMusic())),
          Visibility(visible: false, child: VideoPlayer(_controller))
        ],
      ),
    );
  }

  /*
  * Set music for the audio player.
  * */
  setTrack(trackUrl) async {
    _controller = VideoPlayerController.network(trackUrl);
    await _controller.initialize();

    play();
    _controller.addListener(() {
      if (!_controller.value.isPlaying &&
          (_controller.value.duration == _controller.value.position)) {
        // context.read<MainBloc>().add(MainNextMusic());
      }
    });
  }


  /*
  * Plays music for the audio player.
  * */
  play() {
    if ((_controller.value.duration == _controller.value.position)) {
      _controller.seekTo(Duration(seconds: 0));
    }
    _controller.play();
  }

  /*
  * check for pause music the audio player.
  * */
  checkIsPause() {
    if (_controller.value.isPlaying) {
      context.read<MainBloc>().add(MainPauseMusic(true));
      _controller.pause();
    } else {
      context.read<MainBloc>().add(MainPauseMusic(false));
    }
  }
}
