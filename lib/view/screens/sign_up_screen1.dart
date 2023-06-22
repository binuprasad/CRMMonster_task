import 'package:auth_screen/consts/app_constants.dart';
import 'package:auth_screen/controller/sign_in_screen1_controller.dart';
import 'package:auth_screen/view/widgets/text_formfield.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/elevated_button_widget.dart';
import '../widgets/rich_text_widget.dart';

class SignUpScreen1 extends StatelessWidget {
  SignUpScreen1({super.key});
  final singninScreen1Controller = Get.put(SigninScrren1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppConstants.height(context) * 0.09,
            horizontal: AppConstants.width(context) * 0.12),
        child: SingleChildScrollView(
          child: Form(
            key: singninScreen1Controller.formKey,
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
                  controller: singninScreen1Controller.comapanyIdController,
                  validator: (value) {
                    singninScreen1Controller.copanyIdvalidator(value);
                    return null;
                  },
                ),
                TextFormFieldWidget(
                  hintText: 'Phone Number',
                  controller: singninScreen1Controller.phoneNumberController,
                  validator: (value) {
                    singninScreen1Controller.phoneNumberValidator(value);
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
                TextFormFieldWidget(
                  hintText: 'Industry',
                  validator: (value) {
                    singninScreen1Controller.industryvalidator(value);
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                  controller: singninScreen1Controller.industryController,
                ),
                TextFormFieldWidget(
                  hintText: 'Password',
                  validator: (value) {
                    singninScreen1Controller.passwordValidator(value);
                    return null;
                  },
                  obscureText: singninScreen1Controller.isobscurePassword.value,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      singninScreen1Controller.isobscurePassword.value =
                          !singninScreen1Controller.isobscurePassword.value;
                    },
                    icon: Icon(singninScreen1Controller.isobscurePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  controller: singninScreen1Controller.passwordController,
                ),
                Obx(
                  () => TextFormFieldWidget(
                    hintText: 'Confirm Password',
                    validator: (validator) {
                      singninScreen1Controller
                          .confirmPasswordValidator(validator);
                      return null;
                    },
                    obscureText:
                        singninScreen1Controller.isobscureConfirmPassword.value,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        singninScreen1Controller
                                .isobscureConfirmPassword.value =
                            !singninScreen1Controller
                                .isobscureConfirmPassword.value;
                      },
                      icon: Icon(singninScreen1Controller
                              .isobscureConfirmPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    controller:
                        singninScreen1Controller.confirmPasswordController,
                  ),
                ),
                SizedBox(
                  height: AppConstants.height(context) * 0.03,
                ),
                ElevatedButtonWidget(
                  btnText: 'Signup',
                  onpress: () {
                    singninScreen1Controller.buttonclickValidator();
                  },
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



