import 'package:auth_screen/consts/app_constants.dart';
import 'package:auth_screen/controller/sign_in_screen1_controller.dart';
import 'package:auth_screen/view/screens/sign_up_screen1.dart';
import 'package:auth_screen/view/widgets/otp_textformfield.dart';
import 'package:auth_screen/view/widgets/text_formfield.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/sign_in_screen2_controller.dart';
import '../widgets/rich_text_widget.dart';

class SignUpScreen2 extends StatelessWidget {
  SignUpScreen2({super.key});
  final singninScreen2Controller = Get.put(SigninScreen2Controller());
  final singninScreen1Controller = Get.put(SigninScrren1Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: AppConstants.height(context) * 0.09,
            left: AppConstants.width(context) * 0.12,right: AppConstants.width(context) * 0.12),
        child: Form(
          key: singninScreen1Controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Create company account',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: AppConstants.height(context) * 0.03,
                ),
                TextFormFieldWidget(
                  hintText: 'Company ID',
                  controller: singninScreen2Controller.comapanyIdController,
                  validator: (value) {
                    singninScreen2Controller.copanyIdvalidator(value);
                    return null;
                  },
                ),
                TextFormFieldWidget(
                  hintText: 'Phone Number',
                  controller: singninScreen2Controller.phoneNumberController,
                  validator: (value) {
                    singninScreen2Controller.phoneNumberValidator(value);
                    return null;
                  },
                  prefixIcon: const Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        initialSelection: 'IT',
                        favorite: ['+91', 'IN'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                OtpTextFormFieldWidget(
                  hintText: 'Verify',
                  controller: singninScreen2Controller.otpcontroller,
                  validator: (value) {}, htext: 'Enter OTP',
                ),
                TextFormFieldWidget(
                  hintText: 'Industry',
                  validator: (value) {
                    singninScreen2Controller.industryvalidator(value);
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                  controller: singninScreen2Controller.industryController,
                ),
                TextFormFieldWidget(
                  hintText: 'Password',
                  validator: (value) {
                    singninScreen2Controller.passwordValidator(value);
                    return null;
                  },
                  obscureText: singninScreen2Controller.isobscurePassword.value,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      singninScreen2Controller.isobscurePassword.value =
                          !singninScreen2Controller.isobscurePassword.value;
                    },
                    icon: Icon(singninScreen2Controller.isobscurePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  controller: singninScreen2Controller.passwordController,
                ),
                Obx(
                  () => TextFormFieldWidget(
                    hintText: 'Confirm Password',
                    validator: (validator) {
                      singninScreen2Controller
                          .confirmPasswordValidator(validator);
                      return null;
                    },
                    obscureText:
                        singninScreen2Controller.isobscureConfirmPassword.value,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        singninScreen2Controller
                                .isobscureConfirmPassword.value =
                            !singninScreen2Controller
                                .isobscureConfirmPassword.value;
                      },
                      icon: Icon(singninScreen2Controller
                              .isobscureConfirmPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    controller:
                        singninScreen2Controller.confirmPasswordController,
                  ),
                ),
                SizedBox(
                  height: AppConstants.height(context) * 0.03,
                ),
                
                SizedBox(
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
                    onPressed: () {
                      
                      singninScreen2Controller.buttonclickValidator();
                      Get.to(()=>SignUpScreen1());
                    },
                    child: const Text(
                      'Signin',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height(context) * 0.03,
                ),
                const RichTextWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
