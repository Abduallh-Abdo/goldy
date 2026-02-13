part of 'silver_cubit.dart';

@immutable
sealed class SilverState {}

final class SilverInitial extends SilverState {}

final class SilverLoading extends SilverState {}

final class SilverScuccess extends SilverState {
  final SilverModel silverModel;
  SilverScuccess({required this.silverModel});
}

final class SilverFailure extends SilverState {
  final String errorMessage;
  SilverFailure({required this.errorMessage});
}
