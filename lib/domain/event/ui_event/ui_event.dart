import 'dart:async';

import 'package:what_to_eat/const/enum/ui_event_type.dart';


class UiEvent {
  Timer? timer;
  int timeOutSec = 15;
  UiEvent._privateConstructor();
  final StreamController<UiEventType> _streamController =
      StreamController.broadcast();
  Stream<UiEventType> get stream => _streamController.stream;

  static final UiEvent _instance = UiEvent._privateConstructor();

  factory UiEvent() {
    return _instance;
  }

  void showLoading() async {
    _streamController.add(UiEventType.START_LOADING);
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      timeOutSec -= 1;
      if (timeOutSec == 0) {
        endLoading();
        timer.cancel();
      }
    });
  }

  void endLoading() {
    _streamController.add(UiEventType.END_LOADING);
    timeOutSec = 15;
  }
}

