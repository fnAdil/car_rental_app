import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filters_event.dart';
part 'filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc() : super(FiltersInitial()) {
    on<GetFilters>(_getFilters);
  }

  FutureOr<void> _getFilters(event, emit) {
    emit(FiltersLoading());
    emit(FiltersFailure());
    // response = sevice.GetFilters

    // if (true) {
    //   emit(FiltersSuccess("başarılı"));
    // } else {
    //   emit(FiltersFailure());
    // }
    // TODO: implement event handler
  }
}
