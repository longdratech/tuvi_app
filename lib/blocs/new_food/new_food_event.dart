import 'package:equatable/equatable.dart';

abstract class NewFoodEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadNewFood extends NewFoodEvent {}
