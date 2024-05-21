import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/data/models/social_media_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.socialMediaModel});
  final SocialMediaModel socialMediaModel;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Uri uri = Uri.parse(socialMediaModel.linkURL);
        await launchUrl(uri);
      },
      icon: Image(
        image: AssetImage(socialMediaModel.imagePath),
        width: 24,
        // color: Colors.grey,
      ),
    );
  }
}
