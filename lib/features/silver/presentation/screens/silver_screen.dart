import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_cubit.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/widgets/custom_text.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilverData(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const CustomText(text: 'Silver', color: Colors.grey),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverScuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.imagesSilver),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: '${state.silverModel.price} ',
                        color: Colors.grey,
                      ),
                      CustomText(text: 'USD', color: Colors.grey),
                    ],
                  ),
                ],
              );
            } else if (state is SilverLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SilverFailure) {
              return Center(child: Text(state.errorMessage));
            } else {
              return Text('Some Thing went Wrong. Try again later!');
            }
          },
        ),
      ),
    );
  }
}
