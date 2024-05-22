import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.linkUrl,
  });
  final Color color;
  final IconData icon;
  final String title, linkUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri url = Uri.parse(linkUrl);
        await launchUrl(url);
      },
      child: FittedBox(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          width: 150,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
