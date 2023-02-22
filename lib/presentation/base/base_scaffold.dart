import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:what_to_eat/const/enum/ui_event_type.dart';
import 'package:what_to_eat/domain/event/ui_event/ui_event.dart';

class BaseScaffold extends StatefulWidget {
  PreferredSizeWidget? appBar;
  Widget? body;
  Widget? bottomNavigationBar;
  Color? backgroundColor;
  Widget? floatingActionButton;
  bool? resizeToAvoidBottomInset;
  FloatingActionButtonLocation? floatingActionButtonLocation;
  FloatingActionButtonAnimator? floatingActionButtonAnimator;
  List<Widget>? persistentFooterButtons;
  AlignmentDirectional persistentFooterAlignment =
      AlignmentDirectional.centerEnd;
  Widget? drawer;

  BaseScaffold(
      {this.appBar,
        this.body,
        this.resizeToAvoidBottomInset,
        this.backgroundColor,
        this.floatingActionButton,
        this.bottomNavigationBar,
        this.floatingActionButtonLocation,
        this.floatingActionButtonAnimator,
        this.persistentFooterButtons,
        this.persistentFooterAlignment = AlignmentDirectional.centerEnd,
        this.drawer});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  bool shouldShowNoNetworkErrorBar = false;

  @override
  void initState() {
    UiEvent().stream.listen((event) {
      if (mounted) {
        if (event == UiEventType.START_LOADING) {
          context.loaderOverlay.show();
        }
        if (event == UiEventType.END_LOADING) {
          context.loaderOverlay.hide();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomNavigationBar: widget.bottomNavigationBar,
        backgroundColor: widget.backgroundColor,
        appBar: widget.appBar,
        body: widget.body,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
        persistentFooterButtons: widget.persistentFooterButtons,
        persistentFooterAlignment: widget.persistentFooterAlignment,
        drawer: widget.drawer,
      ),
    );
  }
}
