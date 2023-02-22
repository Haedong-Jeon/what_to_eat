import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:what_to_eat/const/enum/network_event_type.dart';
import 'package:what_to_eat/domain/event/network_event/network_event.dart';

class NoNetworkErrorBar extends StatefulWidget {
  const NoNetworkErrorBar({Key? key}) : super(key: key);

  @override
  State<NoNetworkErrorBar> createState() => _NoNetworkErrorBarState();
}

class _NoNetworkErrorBarState extends State<NoNetworkErrorBar> {
  bool showNetworkError = false;

  @override
  void initState() {
    NetworkEvent().stream.listen((event) {
      if (!mounted) {
        return;
      }
      bool changeToNotShow =
          event == NetworkEventType.CONNECTED && showNetworkError;
      bool changeToShow =
          event == NetworkEventType.NOT_CONNECTED && !showNetworkError;

      if (changeToNotShow) {
        setState(() {
          showNetworkError = false;
        });
      }
      if (changeToShow) {
        setState(() {
          showNetworkError = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (Get.context == null) {
      return Container();
    }
    return AnimatedContainer(
      width: double.maxFinite,
      height: showNetworkError ? 100 : 0,
      color: Colors.blueGrey,
      duration: const Duration(milliseconds: 350),
      child: SafeArea(
        child: Center(
          child: Text(
            AppLocalizations.of(Get.context!).no_network_error,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
