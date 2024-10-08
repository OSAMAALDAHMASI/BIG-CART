import 'package:big_cart/View/widget/auth/login/custom_button.dart';
import 'package:big_cart/View/widget/auth/login/custom_container_login.dart';
import 'package:big_cart/View/widget/auth/login/custom_text_form_field.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordDriver extends StatelessWidget {
  const ForgetPasswordDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEF9E4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/forgetpassDriver.png"),
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 20.0,
                ),
                const CustomContainerLogin(
                    child: Column(
                  children: [
                    Text("نسيت كلمة المرور؟"),
                    SizedBox(
                      height: 2.0,
                    ),
                    FittedBox(
                        child:
                            Text("ادخل بريدك الالكتروني لاستعادة كلمة المرور")),
                    SizedBox(
                      height: 20.0,
                    ),
                    Form(
                        child: CustomTextFormFieldDriver(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'البريد الالكتروني',
                      icon: Icon(Icons.email_outlined),
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                )),
                const SizedBox(
                  height: 24.0,
                ),
                CustomButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.driverResetPass);
                  },
                  text: "ارسال",
                )
              ],
            ),
          ),
        ));
  }
}
