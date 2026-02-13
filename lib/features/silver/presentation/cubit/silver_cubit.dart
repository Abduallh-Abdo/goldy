import 'package:bloc/bloc.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:meta/meta.dart';

import '../../data/models/silver_model.dart';

part 'silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  SilverCubit(this.silverRepo) : super(SilverInitial());
  final SilverRepo silverRepo;

  Future<void> getSilverData() async {
    emit(SilverLoading());
    final result = await silverRepo.getSilverData();
    result.fold(
      (error) => emit(SilverFailure(errorMessage: error)),
      (SilverModel) => emit(SilverScuccess(silverModel: SilverModel)),
    );
  }
}
