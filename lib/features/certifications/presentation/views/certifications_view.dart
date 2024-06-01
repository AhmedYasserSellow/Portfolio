import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/core/widgets/custom_grid_view.dart';
import 'package:portfolio/features/certifications/presentation/views/widgets/certification_item.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class CertificationView extends StatelessWidget {
  const CertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Certifications',
          style: AppTextStyles.ktsBigHeader(context),
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: CustomGridView(
            itemCount: context.read<HomeCubit>().certificationsModelList.length,
            itemBuilder: (context, index) {
              return CertificationItem(
                certificateModel:
                    context.read<HomeCubit>().certificationsModelList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
