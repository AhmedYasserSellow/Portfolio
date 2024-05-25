import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';

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
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {
            context.read<MainCubit>().changePageIndex(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            decoration: ShapeDecoration(
              color: context.read<MainCubit>().pageIndex == index
                  ? Colors.white
                  : Colors.transparent,
              shape: const OvalBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage(imagePath),
                color: context.read<MainCubit>().pageIndex == index
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
