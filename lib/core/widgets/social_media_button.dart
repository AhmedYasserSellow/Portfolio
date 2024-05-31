import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.socialMediaModel,
    this.iconSize = 24,
    this.color,
  });
  final SocialMediaModel socialMediaModel;
  final double iconSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Uri uri = Uri.parse(socialMediaModel.linkURL);
        await launchUrl(uri);
      },
      icon: Image(
        image: AssetImage(socialMediaModel.imagePath),
        width: iconSize,
        color: color,
      ),
    );
  }
}
