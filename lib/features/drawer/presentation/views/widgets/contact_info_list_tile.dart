import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ContactInfoListTile extends StatelessWidget {
  const ContactInfoListTile({
    super.key,
    required this.info,
    required this.title,
    required this.onTap,
  });
  final String title, info;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: AppTextStyles.ktsHeader(context),
      ),
      trailing: InkWell(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Text(
          info,
          style: AppTextStyles.ktsNormal(context).copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
