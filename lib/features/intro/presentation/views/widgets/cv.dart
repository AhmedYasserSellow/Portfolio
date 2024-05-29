import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class CV extends StatelessWidget {
  const CV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Uri url = Uri.parse(
          context.read<HomeCubit>().personalData.cv,
        );
        await launchUrl(url);
      },
      child: Image.asset(
        Assets.imagesCv,
        height: 300,
      ),
    );
  }
}
