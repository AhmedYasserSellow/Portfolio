import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/connect_button.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class PortfolioDetials extends StatelessWidget {
  const PortfolioDetials({
    super.key,
  });

  final String text = 'Flutter Developer';

  final String intro =
      'Hello I am Ahmed Yasser\n  -a passionate mobile developer\n  -a software engineer';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTextStyles.ktsBigHeader,
        ),
        Text(
          intro,
          style: AppTextStyles.ktsMediumHeader,
        ),
        const SizedBox(
          height: 20,
        ),
        ConnectButton(
          icon: FontAwesomeIcons.download,
          title: 'Download CV',
          linkUrl: context.read<HomeCubit>().personalData.cv,
        ),
      ],
    );
  }
}
