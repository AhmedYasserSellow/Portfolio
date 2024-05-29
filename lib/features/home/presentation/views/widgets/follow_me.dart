import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/models/personal_data_model.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/social_media_button.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class FollowMe extends StatelessWidget {
  const FollowMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PersonalDataModel personalData = context.read<HomeCubit>().personalData;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: pi / 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Follow Me',
                style: AppTextStyles.ktsHeader,
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                color: Colors.white,
                width: 40,
                height: 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
              imagePath: Assets.imagesFacebook,
              linkURL: 'https://fb.com/${personalData.facebook}'),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
              imagePath: Assets.imagesX,
              linkURL: 'https://x.com/${personalData.twitter}'),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
              imagePath: Assets.imagesInstagram,
              linkURL: 'https://instagram.com/${personalData.instagram}'),
        ),
      ],
    );
  }
}
