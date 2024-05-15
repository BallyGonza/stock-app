import 'package:flutter/material.dart';
import 'package:template_app/theme.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.content,
    required this.primaryActionTitle,
    required this.onPressed,
    super.key,
  });

  final String title;
  final Widget content;
  final String primaryActionTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: theme.primaryColor,
      title: Text(title),
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            onPressed();
            Navigator.of(context).pop();
          },
          child: Text(
            primaryActionTitle,
            style: const TextStyle(color: Colors.green),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
