import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/ui/home/home_reducer.dart';
import 'package:flutter_template/ui/home/home_state.dart';
import 'package:flutter_template/ui/localization/app_localizations_context.dart';
import 'package:flutter_template/ui/themes/app_theme.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // When you need to call an action inside of a reducer, you grab the notifier
    // object and then call the function.
    // Note: You should only call `read` on the ref if you need to perform an
    // action.
    ref.read(homeProvider.notifier).loading();
  }

  void _handleSuccess() {
    debugPrint("Success!");
  }

  void _handleError(String error) {
    debugPrint("Handle The Error: $error");
  }

  /// There are 2 pieces here
  /// 1. We listen for the overall state change inside of the `homeProvider`
  /// 2. We use a `maybeWhen` inside of the stack to conditionally load the
  /// loading indicator when the state is `loading`
  @override
  Widget build(BuildContext context) {
    ref.listen(homeProvider, (_, HomeState newState) {
      newState.maybeWhen(
        success: _handleSuccess,
        failure: _handleError,
        orElse: () => null,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.title),
      ),
      body: Stack(
        children: [
          body(),
          ref.watch(homeProvider).maybeWhen(
                loading: () => Container(
                  color: context.theme.colors.primary.withOpacity(0.25),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                orElse: () => Container(),
              )
        ],
      ),
    );
  }

  Widget body() {
    return Center(
      child: Text(context.localization.description),
    );
  }
}
