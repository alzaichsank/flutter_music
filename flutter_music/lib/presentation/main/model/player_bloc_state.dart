import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_bloc_state.freezed.dart';

@freezed
abstract class PlayerBlocState with _$PlayerBlocState {

  const factory PlayerBlocState.purePlayer() = PurePlayer;

  const factory PlayerBlocState.playerShowMusicLoading() = PlayerShowMusicLoading;

  const factory PlayerBlocState.pauseMusic() = PauseMusic;

  const factory PlayerBlocState.playMusic() = PlayMusic;

  const factory PlayerBlocState.nextMusic() = NextMusic;

  const factory PlayerBlocState.prevMusic() = PrevMusic;

  const factory PlayerBlocState.playerFailedLoadMusic() = PlayerFailedLoadMusic;

  const factory PlayerBlocState.noInternetErrorPlayer() = PlayerNoInternetError;

}
