import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/repository/auth_repository.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final AuthRepository _authRepository;
  static const _splashDuration = Duration(milliseconds: 2500);

  Future<void> _onStarted(_Started event, Emitter<SplashState> emit) async {
    final clock = Stopwatch()..start();
    try {
      final logged = await _authRepository.checkStatus();
      if (logged) {
        await _awaitSplashTime(clock);
        return emit(state.copyWith(logged: true));
      }

      await _authRepository.anonymousLogin();
      await _awaitSplashTime(clock);
      return emit(state.copyWith(logged: true));
    } catch (e) {
      // Todo(Team): handle error case. Maybe add an error splash screen.
      addError(e);
    }
  }

  Future<void> _awaitSplashTime(Stopwatch clock) async {
    clock.stop();
    final remainingTime =
        _splashDuration.inMilliseconds - clock.elapsed.inMilliseconds;
    if (remainingTime < 0) return Future.value();
    await Future.delayed(Duration(milliseconds: remainingTime));
  }
}
