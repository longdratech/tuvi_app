import 'package:equatable/equatable.dart';

abstract class NewFoodState extends Equatable {
  @override
  List<Object> get props => [];
}

class NewFoodInitial extends NewFoodState {}

class NewFoodLoading extends NewFoodState {}

class NewFoodSuccess extends NewFoodState {}

class NewFoodError extends NewFoodState {
  final String error;

  NewFoodError(this.error);
}
