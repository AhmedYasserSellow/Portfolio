import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectButton extends StatefulWidget {
  const ConnectButton({
    super.key,
    required this.icon,
    required this.title,
    required this.linkUrl,
  });
  final IconData icon;
  final String title, linkUrl;

  @override
  State<ConnectButton> createState() => _ConnectButtonState();
}

class _ConnectButtonState extends State<ConnectButton>
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
          controller.forward();
        },
        onExit: (PointerEvent event) {
          controller.reverse();
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
