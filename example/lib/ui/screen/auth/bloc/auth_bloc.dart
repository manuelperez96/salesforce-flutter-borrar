import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(AuthLoading()) {
    on<Login>(_login);
  }

  final AuthRepository _authRepository;

  Future<void> _login(
    Login event,
    Emitter<AuthState> emit,
  ) async {
    await _authRepository.emailLogin(event.email);
    emit(AuthDone());
  }
}
