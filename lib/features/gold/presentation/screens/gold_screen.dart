import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/widgets/custom_text.dart';
import 'package:goldy/features/gold/data/repo/gold_repo.dart';
import 'package:goldy/features/gold/presentation/screens/cubit/gold_cubit.dart';

import '../../../../core/constant/app_images.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGoldData(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,

          centerTitle: true,
          title: const CustomText(text: 'Gold', color: Colors.amber),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldScuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.imagesGold),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: '${state.goldModel.price!.toStringAsFixed(3)} ',
                        color: Colors.amber,
                      ),
                      CustomText(text: 'USD', color: Colors.amber),
                    ],
                  ),
                ],
              );
            } else if (state is GoldLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GoldFailure) {
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
