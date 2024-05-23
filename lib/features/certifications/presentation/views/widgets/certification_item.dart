import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/connect_button.dart';
import 'package:portfolio/features/certifications/data/models/certificate_model.dart';

class CertificationItem extends StatelessWidget {
  const CertificationItem({
    super.key,
    required this.certificateModel,
  });
  final CertificateModel certificateModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              certificateModel.name,
              style: AppTextStyles.ktsHeader,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Expanded(
              child: SizedBox(
                height: 8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  certificateModel.source,
                  style: AppTextStyles.ktsHeader.copyWith(
                    color: Colors.blue,
                  ),
                ),
                Text(
                  certificateModel.date,
                  style: AppTextStyles.ktsNormal,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                  text: 'Skills: ',
                  style: AppTextStyles.ktsHeader,
                  children: [
                    TextSpan(
                      text: certificateModel.skills,
                      style: AppTextStyles.ktsNormal,
                    ),
                  ]),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Expanded(
              child: SizedBox(
                height: 8,
              ),
            ),
            ConnectButton(
              color: Colors.purple,
              icon: FontAwesomeIcons.link,
              title: 'Certificate',
              linkUrl: certificateModel.link,
            ),
          ],
        ),
      ),
    );
  }
}
