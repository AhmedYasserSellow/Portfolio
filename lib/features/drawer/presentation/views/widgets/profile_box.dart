import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

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
            context.read<HomeCubit>().personalData.photo,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Ahmed Yasser',
          style: AppTextStyles.ktsHeader(context),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Flutter Developer & Comminucation and Copmuter Engineer',
          textAlign: TextAlign.center,
          style: AppTextStyles.ktsNormal(context),
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
