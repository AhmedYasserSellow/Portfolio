import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.controller,
    required this.text,
    this.maxLines = 1,
  });
  final TextEditingController controller;
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${text.toLowerCase()} cannot be empty';
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: Colors.white,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        labelText: text,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildBorder(error: true),
        focusedErrorBorder: buildBorder(error: true),
      ),
    );
  }

  static OutlineInputBorder buildBorder({
    bool error = false,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: error
          ? const BorderSide(
              color: Colors.red,
            )
          : const BorderSide(
              color: Colors.white,
            ),
    );
  }
}
