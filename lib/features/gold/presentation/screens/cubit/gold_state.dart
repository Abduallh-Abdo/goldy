part of 'gold_cubit.dart';

@immutable
sealed class GoldState {}

final class GoldInitial extends GoldState {}

final class GoldLoading extends GoldState {}

final class GoldScuccess extends GoldState {
  final GoldModel goldModel;
  GoldScuccess({required this.goldModel});
}

final class GoldFailure extends GoldState {
  final String errorMessage;
  GoldFailure({required this.errorMessage});
}
