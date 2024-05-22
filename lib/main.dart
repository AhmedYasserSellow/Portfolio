import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/main/presentation/views/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
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
