part of 'filters_bloc.dart';

@immutable
abstract class FiltersState {}

class FiltersInitial extends FiltersState {}

class FiltersLoading extends FiltersState {}

class FiltersFailure extends FiltersState {}

class FiltersSuccess extends FiltersState {
  final String data;

  FiltersSuccess(this.data);
}
