import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/social_media_button.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesWhatsapp,
            linkURL: 'https://wa.me/+201028825215',
          ),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesLinkedin,
            linkURL: 'https://www.linkedin.com/in/ahmedyasser2002/w',
          ),
        ),
        SocialMediaButton(
          socialMediaModel: SocialMediaModel(
            imagePath: Assets.imagesGithub,
            linkURL: 'https://github.com/AhmedYasserSellow',
          ),
        ),
      ],
    );
  }
}
