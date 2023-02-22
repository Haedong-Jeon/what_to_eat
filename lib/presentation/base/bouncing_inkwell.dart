import 'package:flutter/material.dart';

class BouncingInkWell extends StatefulWidget {
  final Widget child;
  final Function? onTap;
  final Function? onLongPress;
  final double? scaleDownPercent; //줄어들 때 얼마나 줄어들지?

  const BouncingInkWell(
      {super.key,
        required this.child,
        this.onTap,
        this.onLongPress,
        this.scaleDownPercent = 0.9});

  @override
  State<BouncingInkWell> createState() => _BouncingInkWellState();
}

class _BouncingInkWellState extends State<BouncingInkWell>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleAniController;
  late Animation<double> _scaleAni;

  @override
  void initState() {
    _scaleAniController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _scaleAni = Tween<double>(begin: 1, end: widget.scaleDownPercent)
        .animate(_scaleAniController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAni,
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        child: widget.child,
        onTap: () async {
          await bounce();
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        onLongPress: () async {
          await bounce();
          if (widget.onLongPress != null) {
            widget.onLongPress!();
          }
        },
      ),
    );
  }

  Future bounce() async {
    await _scaleAniController.forward();
    await _scaleAniController.animateBack(0);
  }
}
