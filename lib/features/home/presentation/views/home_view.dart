import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const PortfolioAppBar(),
          body: PageView(
            scrollDirection: Axis.vertical,
            children: const [],
          ),
        );
      },
    );
  }
}
