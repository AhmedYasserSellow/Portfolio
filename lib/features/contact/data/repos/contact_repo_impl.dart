import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/contact/data/models/email_model.dart';
import 'package:portfolio/features/contact/data/repos/contact_repo.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class ContactRepoImpl implements ContactRepo {
  @override
  Future sendEmail(
    BuildContext context,
    EmailModel emailModel,
  ) async {
    const String serviceID = 'service_8vo138m';
    const String templateID = 'template_y8ochke';
    const String userID = 'JjwVQ93DO_DrjG402';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'service_id': serviceID,
            'template_id': templateID,
            'user_id': userID,
            'template_params': {
              'user_email': emailModel.email,
              'user_name': emailModel.name,
              'user_subject': emailModel.subject,
              'user_message': emailModel.message,
              'to_email': context.read<HomeCubit>().personalData.email,
            },
          },
        ),
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Email sent successfully',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Email is not sent',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
