import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/models/personal_data_model.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/widgets/social_media_button.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me_row.dart';

class FollowMe extends StatelessWidget {
  const FollowMe({
    super.key,
    required this.axis,
  });

  final Axis axis;
  List<SocialMediaButton> buttons(PersonalDataModel personalData) => [
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
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
              imagePath: Assets.imagesDiscord,
              linkURL: 'https://discordapp.com/users/${personalData.discord}'),
        ),
      ];
  @override
  Widget build(BuildContext context) {
    PersonalDataModel personalData = context.read<HomeCubit>().personalData;
    if (axis == Axis.vertical) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.rotate(
            angle: pi / 2,
            child: const FollowMeRow(),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: buttons(personalData),
          )
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FollowMeRow(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: buttons(personalData),
          )
        ],
      );
    }
  }
}
