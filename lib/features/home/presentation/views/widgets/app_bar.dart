import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/widgets/connect_button.dart';
import 'package:portfolio/features/home/presentation/views/widgets/navigation_text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({
    super.key,
    required this.controller,
  });
  final PageController controller;
  static const List<String> navigstionList = [
    'Home',
    'Projects',
    'Certifications',
    'Achievements',
  ];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: const Icon(FontAwesomeIcons.f),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          navigstionList.length,
          (index) => NavigationTextButton(
              text: navigstionList[index],
              controller: controller,
              index: index),
        ),
      ),
      actions: [
        ConnectButton(
          onTap: () async {
            Uri url = Uri.parse('https://wa.me/+201028825215');
            await launchUrl(url);
          },
          color: AppColors.kcWhatsAppColor,
          icon: FontAwesomeIcons.whatsapp,
          title: 'Whatsapp',
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.copy(AppBar().preferredSize);
}
