import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Already have an account,',
        style: TextStyle(
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.red),
          ),
        ],
      ),
    );
  }
}