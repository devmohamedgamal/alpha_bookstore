import 'package:alpha_bookstore/core/constants.dart';
import 'package:alpha_bookstore/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/widgets/custom_btn.dart';
import 'intro_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsManger.kLogo),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          const IntroText(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          CustomBtn(
            text: "Create Account",
            textColor: AppConstants.kPrimaryColor,
            backgroundColor: Colors.white,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kRegisterView);
            },
          ),
          const SizedBox(height: 20),
          CustomBtn(
            text: "Log in",
            backgroundColor: Colors.transparent,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kHomeView);
            },
            child: const Text(
              'Login As Guest',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
