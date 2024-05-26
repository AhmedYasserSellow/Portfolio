import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/data/models/email_model.dart';

abstract class ContactRepo {
  Future sendEmail(
    BuildContext context,
    EmailModel emailModel,
  );
}
