import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ContactViewHeader extends StatelessWidget {
  const ContactViewHeader({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Let\'s work',
          style: AppTextStyles.ktsBigHeader(context),
        ),
        Text(
          'I would love to hear from you!',
          style: AppTextStyles.ktsMediumHeader(context),
        ),
      ],
    );
  }
}
