import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/extensions/responsive_text.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/certifications/data/models/certificate_model.dart';

class CertificationDialog extends StatelessWidget {
  const CertificationDialog({
    super.key,
    required this.certificateModel,
  });

  final CertificateModel certificateModel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: AppColors.kcbgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              certificateModel.name,
              maxLines: 3,
              style: AppTextStyles.ktsBigHeader(context).copyWith(
                fontSize: 24.toResponsiveFontSize(context),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              FontAwesomeIcons.circleXmark,
              color: AppColors.kcPrimary,
            ),
          ),
        ],
      ),
      content: AspectRatio(
        aspectRatio: 9 / 10,
        child: CachedNetworkImage(
          imageUrl: certificateModel.link,
        ),
      ),
    );
  }
}
