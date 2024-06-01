import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class FollowMeRow extends StatelessWidget {
  const FollowMeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Follow Me',
          style: AppTextStyles.ktsHeader(context),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          color: Colors.white,
          width: 40,
          height: 2,
        ),
      ],
    );
  }
}
