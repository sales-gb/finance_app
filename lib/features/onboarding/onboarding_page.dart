import 'dart:ui';

import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Expanded(
              child: Container(
                height: 100,
                child: Image.asset('assets/images/man.png'),
                color: AppColors.iceWhite,
              ),
            ),
            Text(
              'Spend Smarter',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenLightTwo),
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenLightTwo),
            ),
            const SizedBox(height: 16.0),
            PrimaryButton(),
            // Container(
            //   alignment: Alignment.center,
            //   height: 64.0,
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(38)),
            //     gradient: LinearGradient(
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //       colors: AppColors.greenGradient,
            //     ),
            //   ),
            //   child: Text(
            //     'Get Started',
            //     style: AppTextStyles.bodyText.copyWith(color: AppColors.white),
            //   ),
            // ),
            const SizedBox(height: 16.0),
            Text(
              'Alrady have an account? Log in',
              style: AppTextStyles.smallText.copyWith(color: AppColors.gray),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;

  const PrimaryButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(38)),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(38)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.greenGradient),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(38.0)),
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(38)),
            ),
            alignment: Alignment.center,
            height: 64.0,
            child: Text(
              'Get Started',
              style: AppTextStyles.bodyText.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
