import 'package:car_rental_app/filters/bloc/filters_bloc.dart';
import 'package:car_rental_app/home/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'home/presentation/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Car Rental App',
          theme: ThemeData.light(),
          home: MultiBlocProvider(
            providers: [
              BlocProvider<AppBloc>(
                create: (BuildContext context) => AppBloc(),
              ),
              BlocProvider<FiltersBloc>(
                create: (BuildContext context) => FiltersBloc(),
              ),
            ],
            child: const HomePage(),
          ),
        );
      },
    );
  }
}
