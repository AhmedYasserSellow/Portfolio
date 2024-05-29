import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';

class ProjectButton extends StatefulWidget {
  const ProjectButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;
  @override
  State<ProjectButton> createState() => _ProjectButtonState();
}

class _ProjectButtonState extends State<ProjectButton>
    with TickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation =
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onHover: (PointerEvent event) {
          controller.forward();
        },
        onExit: (PointerEvent event) {
          controller.reverse();
        },
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              SlideTransition(
                position: animation,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  color: Colors.white,
                  child: Opacity(
                    opacity: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'View Project',
                          style: AppTextStyles.ktsNormal,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          Assets.imagesGithub,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'View Project',
                      style: AppTextStyles.ktsNormal,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      Assets.imagesGithub,
                      width: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
