import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/custom_grid_view.dart';
import 'package:portfolio/features/certifications/data/models/certificate_model.dart';
import 'package:portfolio/features/certifications/presentation/views/widgets/certification_item.dart';

class CertificationView extends StatelessWidget {
  const CertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Certifications',
          style: AppTextStyles.ktsBigHeader,
        ),
        Expanded(
          child: CustomGridView(
            itemCount: 16,
            itemBuilder: (context, index) {
              return const CertificationItem(
                certificateModel: CertificateModel(
                  date: 'JUL 2023',
                  lnik: '',
                  name: 'Course',
                  skills: 'Flutter',
                  source: 'Udemy',
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
