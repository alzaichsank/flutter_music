part of '../main_view.dart';

class _MainPlayer extends StatefulWidget {
  _MainPlayer({Key? key}) : super(key: key);

  @override
  _MainPlayerState createState() => _MainPlayerState();
}

class _MainPlayerState extends State<_MainPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    /**use dummy first**/
    _controller = VideoPlayerController.network(
        "https://www.pond5.com/royalty-free-music/item/113205966-casual-urban-90s-chart-ready-chill-upbeat-hip-hop")
      ..initialize();
    _controller.pause();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) => _containerPlayer(context, state),
    );
  }

  Widget _containerPlayer(BuildContext context, MainState state) {
    if (state.isShowPlayer) {
      _controller =
          VideoPlayerController.network(state.data[state.position].previewUrl)
            ..initialize();
    } else if (state.isShowPlayer &&
        (state.statePlayer is MainPauseMusic ||
            state.statePlayer is MainPlayMusic)) {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
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
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              onPressed: () {
                _controller.value.isPlaying
                    ? context.read<MainBloc>().add(MainPauseMusic())
                    : context
                        .read<MainBloc>()
                        .add(MainPlayMusic(state.position));
              }),
          IconButton(
              icon: Icon(Icons.skip_next),
              onPressed: () => context.read<MainBloc>().add(MainNextMusic())),
          Visibility(visible: false, child: VideoPlayer(_controller))
        ],
      ),
    );
  }
}
