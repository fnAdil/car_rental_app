import 'package:car_rental_app/home/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cars/presentation/cars_page.dart';
import '../../common/screens/failure_screen.dart';
import '../../common/screens/loading_screen.dart';
import '../../filters/presentation/filters_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = BlocProvider.of<AppBloc>(context);
    return BlocBuilder(
        bloc: appBloc,
        builder: (BuildContext context, AppState state) {
          if (state is AppInitial) {
            //TODO: burak change username and password
            appBloc.add(LoginEvent("username", "password"));
          }
          if (state is AppLoading) {
            return const LoadingScreen();
          }
          if (state is AppFailure) {
            //TODO: burak could retry here
            //TODO: have a look at the FailureScreen
            return FailureScreen(
              retry: () {},
            );
          }
          return Scaffold(
              appBar: AppBar(
                title: const Text("Car Rental App"),
              ),
              body: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: const FiltersPage(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.blue,
                      child: const CarsPage(),
                    ),
                  ),
                ],
              ));
        });
  }
}
