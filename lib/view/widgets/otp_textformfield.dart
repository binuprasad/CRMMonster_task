import 'package:flutter/material.dart';
import 'package:auth_screen/consts/app_constants.dart';

// ignore: must_be_immutable
class OtpTextFormFieldWidget extends StatelessWidget {
  OtpTextFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    required Null Function(dynamic value) validator, required this.htext,
  }) : super(key: key);

  final String hintText;

  String? Function(String?)? validator;
  TextEditingController controller;
  final String htext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppConstants.height5,
        const Text('OTP sent to your phone',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        AppConstants.height5,
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: AppConstants.height(context) * 0.07,
                child: TextFormField(
                  controller: controller,
                  scrollPadding: EdgeInsets.zero,
                  validator: validator,
                  decoration: InputDecoration(
                    hintText: htext,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5,),
            Text(
              hintText,
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        AppConstants.height5,
        const Text('You can resend the OTP in 0:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        AppConstants.height5,
      ],
    );
  }
}
