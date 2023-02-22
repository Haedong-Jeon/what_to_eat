import 'package:flutter/material.dart';

class NoPaddingTextButton extends StatefulWidget {
  final Function onPressed;
  final Widget child;
  final double? scaleDownPercent; //줄어들 때
  final bool bounce;

  @override
  State<NoPaddingTextButton> createState() => _NoPaddingTextButtonState();

  NoPaddingTextButton(
      {required this.onPressed,
      required this.child,
      this.bounce = false,
      this.scaleDownPercent = 0.9});
}

class _NoPaddingTextButtonState extends State<NoPaddingTextButton>
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
      child: TextButton(
        onPressed: () async {
          if (widget.bounce) {
            await bounce();
          }
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
        child: widget.child,
      ),
    );
  }

  Future bounce() async {
    await _scaleAniController.forward();
    await _scaleAniController.animateBack(0);
  }
}
