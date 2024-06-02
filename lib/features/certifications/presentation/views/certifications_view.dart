import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/certifications/presentation/views/widgets/certifications_grid_view.dart';

class CertificationView extends StatelessWidget {
  const CertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Certifications',
          style: AppTextStyles.ktsBigHeader(context),
        ),
        const SizedBox(
          height: 64,
        ),
        const Expanded(
          child: CertificationsGridView(),
        ),
      ],
    );
  }
}
