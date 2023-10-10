import 'package:alpha_bookstore/core/constants.dart';
import 'package:alpha_bookstore/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_btn.dart';
import '../../../../../../core/widgets/custom_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AssetsManger.kLogo2,
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 33),
          child: CustomTextFormField(
            hint: "Username",
            icon: Icon(Icons.close),
          ),
        ),
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 33),
          child: CustomTextFormField(
            hint: "Password",
            icon: Icon(Icons.visibility),
          ),
        ),
        const SizedBox(height: 55),
        CustomBtn(
          text: 'Log In',
          backgroundColor: AppConstants.kPrimaryColor,
          onPressed: () {},
        ),
        const SizedBox(height: 27),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Do't have an account yet?  ",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Sign up here",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
