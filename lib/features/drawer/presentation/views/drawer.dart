import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/contact_info_list.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/profile_box.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/skills_list.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/social_media.dart';

class PortfolioDrawer extends StatelessWidget {
  const PortfolioDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              ProfileBox(),
              ContactInfoList(),
              SizedBox(height: 20),
              SkillsList(),
              SocialMedia(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
