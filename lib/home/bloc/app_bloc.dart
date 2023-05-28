import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<LoginEvent>(_login);
  }

  FutureOr<void> _login(event, emit) {
    emit(AppLoading());
    emit(AppFailure());

    //TODO: burak login here!
    emit(AppSuccess());
  }
}
