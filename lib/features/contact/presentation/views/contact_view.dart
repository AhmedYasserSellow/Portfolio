import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/contact_view_header.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/email_form.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 800) {
      // Mobile and Tablet View
      return Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ContactViewHeader(),
              const SizedBox(
                height: 16,
              ),
              width <= 512
                  ? const EmailFormWithButtonOutside()
                  : const EmailFormWithButtonInside(),
            ],
          ),
        ),
      );
    } else {
      // Desktop View
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContactViewHeader(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            width: 16,
          ),
          EmailFormWithButtonInside(),
        ],
      );
    }
  }
}
