import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:portfolio/features/home/presentation/views/widgets/pages_view.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().initPageView();
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Row(
          children: [
            const DrawerOpener(),
            const FollowMe(
              axis: Axis.vertical,
            ),
            const Expanded(
              child: PagesView(scrollDirection: Axis.vertical),
            ),
            const NavBar(
              axis: Axis.vertical,
            ),
          ]
              .seperator(
                const SizedBox(
                  width: 8,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
