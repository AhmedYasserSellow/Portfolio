import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/email_form_text_fields.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/submit_button.dart';

class EmailFormWithButtonInside extends StatefulWidget {
  const EmailFormWithButtonInside({super.key});

  @override
  State<EmailFormWithButtonInside> createState() =>
      _EmailFormWithButtonInsideState();
}

class _EmailFormWithButtonInsideState extends State<EmailFormWithButtonInside> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 500,
          maxWidth: 500,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black,
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  FormTextFields(
                    nameController: nameController,
                    emailController: emailController,
                    messageController: messageController,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                  SubmitButton(
                    formKey: formKey,
                    nameController: nameController,
                    emailController: emailController,
                    messageController: messageController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmailFormWithButtonOutside extends StatefulWidget {
  const EmailFormWithButtonOutside({super.key});

  @override
  State<EmailFormWithButtonOutside> createState() =>
      _EmailFormWithButtonOutsideState();
}

class _EmailFormWithButtonOutsideState
    extends State<EmailFormWithButtonOutside> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black,
          ),
          child: Form(
            key: formKey,
            child: FormTextFields(
              nameController: nameController,
              emailController: emailController,
              messageController: messageController,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SubmitButton(
          formKey: formKey,
          nameController: nameController,
          emailController: emailController,
          messageController: messageController,
        ),
      ],
    );
  }
}
