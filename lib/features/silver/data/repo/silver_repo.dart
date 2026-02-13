import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/silver/data/models/silver_model.dart';

import '../../../../core/networking/api_constant.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilverData() async {
    try {
      final result = await DioHelper.getData(
        endPoint: ApiConstant.silverEndPoint,
      );
      return Right(SilverModel.fromJson(result.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
