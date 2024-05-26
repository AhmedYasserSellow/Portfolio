import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class StackedDartWindow extends StatelessWidget {
  const StackedDartWindow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..animateDartWindow(),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 20, left: 15), child: DartWindow()),
        ],
      ),
    );
  }
}

class DartWindow extends StatelessWidget {
  const DartWindow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit homeCubit = context.read<HomeCubit>();
        return Container(
          padding: const EdgeInsets.all(16),
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MacDots(),
              AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(
                    homeCubit.row1,
                    speed: Duration(milliseconds: homeCubit.duration),
                  ),
                ],
              ),
              homeCubit.isRow2
                  ? AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TyperAnimatedText(
                          homeCubit.row2,
                          speed: Duration(milliseconds: homeCubit.duration),
                          textStyle: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  : const SizedBox(),
              homeCubit.isRow3
                  ? AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TyperAnimatedText(
                          homeCubit.row3,
                          speed: Duration(milliseconds: homeCubit.duration),
                          textStyle: const TextStyle(color: Colors.red),
                        ),
                      ],
                    )
                  : const SizedBox(),
              homeCubit.isRow4
                  ? AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TyperAnimatedText(
                          homeCubit.row4,
                          speed: Duration(milliseconds: homeCubit.duration),
                          textStyle: const TextStyle(color: Colors.red),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ]
                .seperator(
                  const SizedBox(
                    height: 8,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

class MacDots extends StatelessWidget {
  const MacDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.yellow,
        ),
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.green,
        ),
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
