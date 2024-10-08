import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/controller/users/Auth/login_controller.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    final size = MediaQuery.of(context).size;
    return AppAuthScaffold(
      title: "مرحبا",
      bottomSheet: AppBottomSheet(
        height: size.height * 0.6.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "سجل الدخول الى حسابك",
                style: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppTextFormField(
                controller: controllerImp.email,
                hintText: "اليريد الالكتزوني",
                icon: const Icon(Icons.mail),
                obscureText: false),
            SizedBox(height: 15.h),
            AppTextFormField(
              controller: controllerImp.password,
              hintText: "كلمة السر ",
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              obscureText: true,
              icon: const Icon(Icons.lock),
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: false,
                      onChanged: (val) {},
                    ),
                    const Text(
                      "ادكرني",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                InkWell(
                  onTap: controllerImp.goToResetPassword,
                  child: Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            GetBuilder<LoginControllerImp>(
              init: LoginControllerImp(),
              builder: (controllerImp) {
                return AppButton(
                  child: Text(
                    "تسحيل الدخول",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  onPressed: () {
                    controllerImp.loginWithEmail(context);
                  },
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              children: [
                Text(
                  " ليس لديك حساب ؟",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                InkWell(
                  onTap: controllerImp.goToSignUp,
                  child: const Text(
                    " \tأنشاء حساب ",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      child: Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login.jpeg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
