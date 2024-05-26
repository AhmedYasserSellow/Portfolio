import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/email_form.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Let\'s work',
              style: AppTextStyles.ktsBigHeader,
            ),
            Text(
              'I would love to hear from you!',
              style: AppTextStyles.ktsMediumHeader,
            ),
          ],
        ),
        const EmailForm(),
      ],
    );
  }
}
