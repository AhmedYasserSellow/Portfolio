import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/contact/data/models/email_model.dart';
import 'package:portfolio/features/contact/data/repos/contact_repo_impl.dart';
import 'package:portfolio/features/contact/presentation/views/widgets/text_form_field.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({super.key});

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 500,
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextInputField(
              controller: nameController,
              text: 'Name',
            ),
            const SizedBox(
              height: 16,
            ),
            TextInputField(
              controller: emailController,
              text: 'Email',
            ),
            const SizedBox(
              height: 16,
            ),
            TextInputField(
              maxLines: 5,
              controller: messageController,
              text: 'Message',
            ),
            const Expanded(
              child: SizedBox(
                height: 16,
              ),
            ),
            InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  ContactRepoImpl().sendEmail(
                    context,
                    EmailModel(
                      name: nameController.text,
                      email: emailController.text,
                      message: messageController.text,
                      subject: 'I love to work with you',
                    ),
                  );
                  nameController.clear();
                  emailController.clear();
                  messageController.clear();
                }
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.kcThird,
                      AppColors.kcPrimary,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Send Message',
                    style: AppTextStyles.ktsHeader.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
