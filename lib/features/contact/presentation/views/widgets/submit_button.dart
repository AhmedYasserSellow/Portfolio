import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/contact/data/models/email_model.dart';
import 'package:portfolio/features/contact/data/repos/contact_repo_impl.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.messageController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            style: AppTextStyles.ktsHeader(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
