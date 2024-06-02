import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/color.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ContactInfoListTile extends StatefulWidget {
  const ContactInfoListTile({
    super.key,
    required this.info,
    required this.title,
    required this.onTap,
  });
  final String title, info;
  final void Function() onTap;

  @override
  State<ContactInfoListTile> createState() => _ContactInfoListTileState();
}

Color? textColor;

class _ContactInfoListTileState extends State<ContactInfoListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.title,
        style: AppTextStyles.ktsHeader(context),
      ),
      trailing: InkWell(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTap,
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              textColor = '00e0d0'.toColor();
            });
          },
          onExit: (event) {
            setState(() {
              textColor = null;
            });
          },
          child: Text(
            widget.info,
            style: AppTextStyles.ktsNormal(context).copyWith(
              decoration: TextDecoration.underline,
              color: textColor,
              decorationColor: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
