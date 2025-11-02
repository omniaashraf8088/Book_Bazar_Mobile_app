import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// An advanced, highly-readable Bloc observer for professional Flutter apps.
/// Provides detailed, structured, and color-coded logs for all Bloc lifecycle events.
class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _log(label: '🟢 BLOC CREATED', details: 'Type: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _log(label: '🔄 STATE CHANGE', details: _formatChange(bloc, change));
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log(label: '🚀 TRANSITION', details: _formatTransition(bloc, transition));
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _log(
      label: '📝 EVENT ADDED',
      details:
          'Bloc: ${bloc.runtimeType}\nEvent: ${event.runtimeType}\nEvent Data: $event',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _log(
      label: '❌ BLOC ERROR',
      details: _formatError(bloc, error, stackTrace),
      isError: true,
    );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _log(label: '🔴 BLOC CLOSED', details: 'Type: ${bloc.runtimeType}');
  }

  /// Centralized logging method for all Bloc events.
  void _log({
    required String label,
    required String details,
    bool isError = false,
  }) {
    if (!kDebugMode) return;
    final border = isError ? '🚨' * 20 : '=' * 60;
    final time = DateTime.now().toIso8601String().substring(11, 19);
    print('\n$border');
    print('$label  |  Time: $time');
    print('-' * 60);
    print(details);
    print(border);
  }

  String _formatChange(BlocBase bloc, Change change) =>
      '''Bloc: ${bloc.runtimeType}
Current State: ${change.currentState.runtimeType}
Next State:    ${change.nextState.runtimeType}
\n📊 State Data:
  From: ${change.currentState}
  To:   ${change.nextState}''';

  String _formatTransition(Bloc bloc, Transition transition) =>
      '''Bloc: ${bloc.runtimeType}
Event: ${transition.event.runtimeType}
Current State: ${transition.currentState.runtimeType}
Next State:    ${transition.nextState.runtimeType}
\n🔄 Transition Data:
  Event: ${transition.event}
  From:  ${transition.currentState}
  To:    ${transition.nextState}''';

  String _formatError(BlocBase bloc, Object error, StackTrace stackTrace) =>
      '''Bloc: ${bloc.runtimeType}
Error: $error
\n📍 Stack Trace (top 5):
${stackTrace.toString().split('\n').take(5).join('\n')}''';
}
