import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/desktop_view.dart';
import 'package:portfolio/features/home/presentation/views/widgets/mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return AdaptiveLayout(
          mobile: (context) {
            return const MobileView();
          },
          tablet: (context) {
            return const MobileView();
          },
          desktop: (context) {
            return const DesktopView();
          },
        );
      },
    );
  }
}
