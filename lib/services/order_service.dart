import 'package:dio/dio.dart';
import 'package:tuvi_booking/constants/api.dart';
import 'package:tuvi_booking/models/order.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

Stream<Order> getnewFood() async* {
  try {
    var response = await Dio().get(url + '/food');
    print(response);
  } catch (e) {
    print(e);
  }
}

class OrderService {
  IO.Socket socket = IO.io('http://localhost:8000/findOneOrder');

  void listenOrder() {
    socket.onConnect((_) {
      print('connect');
      socket.emit('msg', 'test');
    });
    socket.on('event', (data) => print(data));
    socket.onDisconnect((_) => print('disconnect'));
    socket.on('fromServer', (_) => print(_));
  }
}
