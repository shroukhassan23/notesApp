part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteCubit extends AddNoteCubitState {}

class AddNoteCubitLoading extends AddNoteCubitState {}

class AddNoteCubitsuccess extends AddNoteCubitState {}

class AddNoteCubitFailed extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitFailed(this.errorMessage);
}
