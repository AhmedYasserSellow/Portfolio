import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/connect_button.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';

class PortfolioDetials extends StatefulWidget {
  const PortfolioDetials({
    super.key,
  });

  @override
  State<PortfolioDetials> createState() => _PortfolioDetialsState();
}

class _PortfolioDetialsState extends State<PortfolioDetials>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
          color: Colors.blue,
          icon: FontAwesomeIcons.download,
          title: 'Download CV',
          linkUrl: context.read<MainCubit>().personalData.cv,
        ),
      ],
    );
  }
}
