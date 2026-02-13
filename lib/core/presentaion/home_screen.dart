import 'package:flutter/material.dart';
import 'package:goldy/core/constant/app_colors.dart';
import 'package:goldy/core/constant/app_strings.dart';
import 'package:goldy/core/extensions/navigations.dart';
import 'package:goldy/core/widgets/custom_button.dart';

import '../routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: AppStrings.gold,
            onPressed: () {
              context.pushNamed(Routes.goldScreen);
            },
            color: AppColors.goldColor,
          ),
          SizedBox(height: 15),
          CustomButton(
            text: AppStrings.silver,
            onPressed: () {
              context.pushNamed(Routes.silverScreen);
            },
            color: AppColors.silverColor,
          ),
        ],
      ),
    );
  }
}
