import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/models/personal_data_model.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:portfolio/core/widgets/social_media_button.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalDataModel =
        context.read<HomeCubit>().personalData;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesWhatsapp,
            linkURL: 'https://wa.me/${personalDataModel.phone}',
          ),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesLinkedin,
            linkURL:
                'https://www.linkedin.com/in/${personalDataModel.linkedin}/w',
          ),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesGithub,
            linkURL: 'https://github.com/${personalDataModel.github}',
          ),
        ),
      ],
    );
  }
}
