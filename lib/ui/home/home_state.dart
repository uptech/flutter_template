import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

/// Define all of the states we will need for the screen.
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initializing;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success() = _Success;
  const factory HomeState.failure(String reason) = _Failure;
}
