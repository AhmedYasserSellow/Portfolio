import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/certifications/data/models/certificate_model.dart';
import 'package:portfolio/features/certifications/presentation/views/widgets/certification_dialog.dart';

class CertificationItem extends StatefulWidget {
  const CertificationItem({
    super.key,
    required this.certificateModel,
  });

  final CertificateModel certificateModel;

  @override
  State<CertificationItem> createState() => _CertificationItemState();
}

class _CertificationItemState extends State<CertificationItem>
    with SingleTickerProviderStateMixin {
  late AnimationController certificateController;

  @override
  void initState() {
    super.initState();
    certificateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    certificateController.dispose();
    super.dispose();
  }

  void showCertificateDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return CertificationDialog(
          certificateModel: widget.certificateModel,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCertificateDialog(context);
      },
      child: MouseRegion(
        onHover: (pointer) {
          certificateController.forward();
        },
        onExit: (pointer) {
          certificateController.reverse();
        },
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            children: [
              Opacity(
                opacity: 1 - (0.5 * certificateController.value),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: widget.certificateModel.link,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                    height: double.maxFinite,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Opacity(
                  opacity: certificateController.value,
                  child: IconButton(
                    onPressed: () {
                      showCertificateDialog(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.maximize,
                      color: AppColors.kcPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: certificateController.value,
                    child: Text(
                      widget.certificateModel.name,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.ktsNormal(context).copyWith(
                        color: AppColors.kcPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
