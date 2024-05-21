import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/my_image.jpg'),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Ahmed Yasser',
          style: PortfolioTextStyles.ktsHeader(context),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Flutter Developer & Comminucation and Copmuter Engineer',
          textAlign: TextAlign.center,
          style: PortfolioTextStyles.ktsNormal(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
