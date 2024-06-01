import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return const Scaffold(
      drawer: SafeArea(
        child: CustomDrawer(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                DrawerOpener(),
                Expanded(
                  child: SizedBox(),
                ),
                NavBar(axis: Axis.horizontal),
                Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
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
            FollowMe(axis: Axis.horizontal),
          ],
        ),
      ),
    );
  }
}
