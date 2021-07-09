import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc_state.freezed.dart';

@freezed
abstract class SearchBlocState with _$SearchBlocState {

  const factory SearchBlocState.pureSearch() = PureSearch;

  const factory SearchBlocState.showMusicLoading() = ShowMusicLoading;

  const factory SearchBlocState.updateMusic() = UpdateMusic;

  const factory SearchBlocState.failedLoadMusic() = FailedLoadMusic;

  const factory SearchBlocState.noInternetError() = NoInternetError;

  const factory SearchBlocState.emptyContent() = EmptyContent;
}
