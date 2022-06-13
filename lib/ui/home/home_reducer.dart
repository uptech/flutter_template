import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/ui/home/home_state.dart';

final homeProvider = StateNotifierProvider<HomeReducer, HomeState>((ref) {
  // NOTE: It's important to note that a StateNotifier shuold not be watching
  // other providers inside of itself. Instead, we should pass in all watched
  // providers into the reducer itself.
  // We pass in the read function to allow us to call actions on other providers
  return HomeReducer(ref.read);
});

class HomeReducer extends StateNotifier<HomeState> {
  final Reader read;

  HomeReducer(this.read) : super(const HomeState.initial());

  void clearError() {
    state = const HomeState.initial();
  }

  void loading() {
    state = const HomeState.loading();

    Timer(
      const Duration(seconds: 5),
      () {
        state = const HomeState.success();
      },
    );
  }
}
