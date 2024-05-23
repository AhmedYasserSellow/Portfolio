import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/connect_button.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';

class PortfolioDetials extends StatelessWidget {
  const PortfolioDetials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Personal Portfolio',
          style: AppTextStyles.ktsBigHeader,
        ),
        Text(
          'Flutter Developer',
          style: AppTextStyles.ktsBigHeader,
        ),
        Text(
          'I can help you creating excellent mobile apps, handingevery step from concept to deployment',
          style: AppTextStyles.ktsNormal,
        ),
        const SizedBox(
          height: 20,
        ),
        ConnectButton(
          color: Colors.blue,
          icon: FontAwesomeIcons.download,
          title: 'Download CV',
          linkUrl: context.read<MainCubit>().personalData.cv,
        ),
      ],
    );
  }
}
