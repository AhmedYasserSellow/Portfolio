import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/layouts/main_layout.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cairo',
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        home: const MainView(),
      ),
    );
  }
}
