import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/connect_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Personal Portfolio',
                style: AppTextStyles.ktsBigHeader(context),
              ),
              Text(
                'Flutter Developer',
                style: AppTextStyles.ktsBigHeader(context),
              ),
              Text(
                'I can help you creating excellent mobile apps, handingevery step from concept to deployment',
                style: AppTextStyles.ktsNormal(context),
              ),
              const SizedBox(
                height: 20,
              ),
              const ConnectButton(
                color: Colors.blue,
                icon: FontAwesomeIcons.download,
                title: 'Download CV',
                linkUrl: '',
              ),
            ],
          ),
          Image.asset(
            Assets.imagesCv,
            width: 300,
          ),
        ],
      ),
    );
  }
}
