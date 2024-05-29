import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/gradient_background_scaffold.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().loadData();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.forward().then(
          (value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeView();
              },
            ),
          ),
        );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackgroundScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesCv,
              width: 100,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 100,
              child: LinearProgressIndicator(
                value: controller.value,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '${(controller.value * 100).toInt()} %',
              style: AppTextStyles.ktsNormal,
            )
          ],
        ),
      ),
    );
  }
}
