import 'package:bloc/bloc.dart';
import 'package:goldy/features/gold/data/repo/gold_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/gold_model.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit(this.goldRepo) : super(GoldInitial());
  final GoldRepo goldRepo;

  Future<void> getGoldData() async {
    emit(GoldLoading());
    final result = await goldRepo.getGoldData();
    result.fold(
      (error) => emit(GoldFailure(errorMessage: error)),
      (goldModel) => emit(GoldScuccess(goldModel: goldModel)),
    );
  }
}
