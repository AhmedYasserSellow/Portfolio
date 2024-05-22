import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/main/presentation/views/widgets/desktop_view.dart';
import 'package:portfolio/features/main/presentation/views/widgets/mobile_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        MainCubit mainCubit = context.read<MainCubit>();
        return ResponsiveDeisgner(
          desktop: (context) {
            return DesktopView(
              controller: mainCubit.controller,
            );
          },
          mobile: (context) {
            return MobileView(
              controller: mainCubit.controller,
            );
          },
          tablet: (context) {
            return MobileView(
              controller: mainCubit.controller,
            );
          },
        );
      },
    );
  }
}
