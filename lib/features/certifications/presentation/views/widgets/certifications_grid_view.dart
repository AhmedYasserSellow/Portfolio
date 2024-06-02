import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/certifications/presentation/views/widgets/certification_item.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class CertificationsGridView extends StatelessWidget {
  const CertificationsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: GridView.builder(
        itemCount: context.read<HomeCubit>().certificationsModelList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          childAspectRatio: 1.2,
          crossAxisCount: AdaptiveLayout.isMobile(context)
              ? 1
              : AdaptiveLayout.isTablet(context)
                  ? 2
                  : 3,
        ),
        itemBuilder: (context, index) {
          return CertificationItem(
            certificateModel:
                context.read<HomeCubit>().certificationsModelList[index],
          );
        },
      ),
    );
  }
}
