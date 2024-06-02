import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:portfolio/features/home/presentation/views/widgets/pages_view.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().initPageView();
    return Scaffold(
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
      appBar: PreferredSize(
        preferredSize:
            Size(double.infinity, AppBar().preferredSize.height + 16),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: AppBar(
            leading: const DrawerOpener(),
            title: const NavBar(axis: Axis.horizontal),
            centerTitle: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: AppColors.kcbgColor,
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: PagesView(
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FollowMe(axis: Axis.horizontal),
    );
  }
}
