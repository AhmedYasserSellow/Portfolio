import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/home/presentation/views/widgets/mobile_app_bar.dart';
import 'package:portfolio/features/home/presentation/views/widgets/pages_view.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().initPageView();
    return const Scaffold(
      drawer: SafeArea(
        child: CustomDrawer(),
      ),
      appBar: MobileAppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          16,
        ),
        child: PagesView(
          scrollDirection: Axis.horizontal,
        ),
      ),
      bottomNavigationBar: FollowMe(axis: Axis.horizontal),
    );
  }
}
