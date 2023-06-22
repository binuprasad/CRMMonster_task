import 'package:flutter/material.dart';

import '../../consts/app_constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.onpress,
    required this.btnText,
  });
  final void Function()? onpress;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstants.width(context) * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          btnText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
