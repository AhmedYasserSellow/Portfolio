import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.imagePath,
    required this.index,
  });
  final String imagePath;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {
            context.read<HomeCubit>().changePageIndex(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            decoration: ShapeDecoration(
              color: context.read<HomeCubit>().pageIndex == index
                  ? AppColors.kcbgColor
                  : Colors.transparent,
              shape: const OvalBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage(imagePath),
                color: context.read<HomeCubit>().pageIndex == index
                    ? AppColors.kcPrimary
                    : AppColors.kcSecondary,
              ),
            ),
          ),
        );
      },
    );
  }
}
