import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuvi_booking/blocs/new_food/new_food_event.dart';
import 'package:tuvi_booking/blocs/new_food/new_food_state.dart';

class NewFoodBloc extends Bloc<NewFoodEvent, NewFoodState> {
  NewFoodBloc(NewFoodState initialState) : super(initialState);
}
