import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: CachedNetworkImageProvider(
            context.read<MainCubit>().personalData.photo,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Ahmed Yasser',
          style: AppTextStyles.ktsHeader,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Flutter Developer & Comminucation and Copmuter Engineer',
          textAlign: TextAlign.center,
          style: AppTextStyles.ktsNormal,
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
