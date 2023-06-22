// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:auth_screen/consts/app_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    this.prefixIcon,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText, required Null Function(dynamic value) validator,
  }) : super(key: key);

  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  String? Function(String?)? validator;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style:
              const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: AppConstants.height(context) * 0.07,
          child: TextFormField(
            controller: controller,
            scrollPadding: EdgeInsets.zero,
            obscureText: obscureText??false,
            validator: validator,
            decoration: InputDecoration(
              
              
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black),),
            ),
          ),
        ),
        AppConstants.height10
      ],
    );
  }
}
