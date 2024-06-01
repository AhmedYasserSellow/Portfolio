import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/text_form_field.dart';

class FormTextFields extends StatelessWidget {
  const FormTextFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.messageController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInputField(
          controller: nameController,
          text: 'Name',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Name cannot be epmty';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        TextInputField(
            controller: emailController,
            text: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            }),
        const SizedBox(
          height: 16,
        ),
        TextInputField(
          maxLines: 5,
          controller: messageController,
          text: 'Message',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Message cannot be epmty';
            }
            return null;
          },
        ),
      ],
    );
  }
}
