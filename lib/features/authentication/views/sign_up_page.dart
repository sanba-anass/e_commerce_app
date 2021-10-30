import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/widgets/app_logo.dart';
import 'package:e_commerce/features/authentication/widgets/email_from.dart';
import 'package:e_commerce/features/authentication/widgets/facebook_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/google_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/password_from.dart';
import 'package:e_commerce/features/authentication/widgets/sign_up_button.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController(
    AuthService(),
  ));
  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Responsive.screenHeight(3, context),
            ),
            const AppLogo(),
            SizedBox(
              height: Responsive.screenHeight(2.5, context),
            ),
            Container(
              alignment: Alignment.center,
              child: AppText(
                text: 'Infinite Energy',
                color: AppColors.kBlack,
                fontSize: FontSizes.bigTitle,
                fontWeight: FontWeights.extraBold,
              ),
            ),
            SizedBox(
              height: Responsive.screenHeight(1, context),
            ),
            AppText(
                text: 'Sign Up to continue',
                fontSize: FontSizes.middleSize,
                color: AppColors.kBlack),
            SizedBox(
              height: Responsive.screenHeight(5, context),
            ),
            EmailForm(),
            SizedBox(
              height: Responsive.screenHeight(2, context),
            ),
            PasswordForm(),
            SizedBox(
              height: Responsive.screenHeight(2, context),
            ),
            AppFrom(
              textEditController: TextEditingController(),
              hintText: 'Confirm Password',
            ),
            SizedBox(
              height: Responsive.screenHeight(2, context),
            ),
            AppFrom(
              textEditController: TextEditingController(),
              hintText: 'UserName',
              icon: Icons.person,
            ),
            SizedBox(
              height: Responsive.screenHeight(2, context),
            ),
            SignUpButton(),
            SizedBox(
              height: Responsive.screenHeight(4, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GoogleSignInButton(),
                SizedBox(
                  width: Responsive.screenWidth(3, context),
                ),
                const FacebookSignInButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
