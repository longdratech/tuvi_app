import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_event.dart';
import 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(OrderState initialState) : super(initialState);
}
