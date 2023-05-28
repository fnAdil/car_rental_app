import 'package:car_rental_app/common/screens/failure_screen.dart';
import 'package:car_rental_app/common/screens/loading_screen.dart';
import 'package:car_rental_app/filters/bloc/filters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final filtersBloc = BlocProvider.of<FiltersBloc>(context);
    return BlocBuilder(
      bloc: filtersBloc,
      builder: (context, state) {
        if (state is FiltersInitial) {
          filtersBloc.add(GetFilters());
        }
        if (state is FiltersLoading) {
          return const LoadingScreen();
        }
        if (state is FiltersFailure) {
          return FailureScreen(
            retry: () {},
          );
        }
        return Container();
      },
    );
  }
}
