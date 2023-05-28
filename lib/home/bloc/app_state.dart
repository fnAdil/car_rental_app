part of 'app_bloc.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppSplash extends AppState {}

class AppFailure extends AppState {}

class AppSuccess extends AppState {}
