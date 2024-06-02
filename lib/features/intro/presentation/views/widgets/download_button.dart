import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadButton extends StatefulWidget {
  const DownloadButton({
    super.key,
    required this.icon,
    required this.title,
    required this.linkUrl,
  });
  final IconData icon;
  final String title, linkUrl;

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton>
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
    animation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: Offset.zero,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Uri url = Uri.parse(widget.linkUrl);
        await launchUrl(url);
      },
      child: MouseRegion(
        onHover: (PointerEvent event) {
          if (context.read<HomeCubit>().onHoverAnimations) {
            controller.forward();
          }
        },
        onExit: (PointerEvent event) {
          if (context.read<HomeCubit>().onHoverAnimations) {
            controller.reverse();
          }
        },
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              SlideTransition(
                position: animation,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.kcSecondary,
                  ),
                  child: Opacity(
                    opacity: 0,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            widget.icon,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            widget.title,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: AppColors.kcPrimary,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        widget.title,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
