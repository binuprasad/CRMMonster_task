import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen2Controller extends GetxController{
  final comapanyIdController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController= TextEditingController();
  final industryController = TextEditingController();
  final otpcontroller = TextEditingController();
  final confirmPasswordController= TextEditingController();
  RxBool isobscureConfirmPassword = false.obs;
   RxBool isobscurePassword = false.obs;
     final formKey = GlobalKey<FormState>();
     buttonclickValidator() {
    if (formKey.currentState!.validate()) {
      return;
    }
  }


  confirmPasswordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please re-enter password';
    }
    if (passwordController.text != confirmPasswordController.text) {
      return "Password does not match";
    }
  }
  industryvalidator(value){
    if(value == null||value.isEmpty){
      return 'plese fill your industry field';
    }
  }
  copanyIdvalidator(value){
    if(value == null||value.isEmpty){
      return'please enter your copanyId';
    }
  }
  phoneNumberValidator(value){
    if(value == null||value.isEmpty){
      return 'please enter the phonenumber';
    }
  }


  passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'invalid Password';
    }
    if (value.length < 6) {
      return 'Must be more than 5 charater';
    }
  }

}