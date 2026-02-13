import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/gold/data/models/gold_model.dart';

import '../../../../core/networking/api_constant.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGoldData() async {
    try {
      final result = await DioHelper.getData(
        endPoint: ApiConstant.goldEndPoint,
      );
      return Right(GoldModel.fromJson(result.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
