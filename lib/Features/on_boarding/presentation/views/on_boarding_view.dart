import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.kPrimaryColor,
      body: const OnBoardingViewBody(),
    );
  }
}
