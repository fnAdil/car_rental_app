part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class LoginEvent extends AppEvent {
  final String username;
  final String password;

  LoginEvent(this.username, this.password);
}
