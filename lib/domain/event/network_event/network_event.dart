import 'dart:async';

import 'package:what_to_eat/const/enum/network_event_type.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkEvent {
  Timer? timer;
  NetworkEvent._privateConstructor();
  static final NetworkEvent _instance = NetworkEvent._privateConstructor();
  final StreamController<NetworkEventType> _streamController =
      StreamController.broadcast();
  Stream<NetworkEventType> get stream => _streamController.stream;


   void startListen() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      bool result = await InternetConnectionCheckerPlus().hasConnection;
      if (result == true) {
        _streamController.add(NetworkEventType.CONNECTED);
      } else {
        _streamController.add(NetworkEventType.NOT_CONNECTED);
      }
    });
  }

  void stopListen() {
    timer?.cancel();
  }

  factory NetworkEvent() {
    return _instance;
  }
}
