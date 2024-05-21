import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ContactInfoListTile extends StatelessWidget {
  const ContactInfoListTile(
      {super.key, required this.info, required this.title});
  final String title, info;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: PortfolioTextStyles.ktsHeader(context),
      ),
      trailing: Text(
        info,
        style: PortfolioTextStyles.ktsNormal(context),
      ),
    );
  }
}
