import 'package:flutter/material.dart';

class NoPaddingIconButton extends StatefulWidget {
  final Function onPressed;
  final Widget icon;
  final double? scaleDownPercent; //줄어들 때
  final bool bounce;

  @override
  State<NoPaddingIconButton> createState() => _NoPaddingIconButtonState();

  NoPaddingIconButton(
      {required this.onPressed,
      required this.icon,
      this.bounce = false,
      this.scaleDownPercent = 0.9});
}

class _NoPaddingIconButtonState extends State<NoPaddingIconButton>
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
      child: IconButton(
        onPressed: () async {
          if (widget.bounce) {
            await bounce();
          }
          widget.onPressed();
        },
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        style: IconButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.padded,
        ),
        icon: widget.icon,
      ),
    );
  }

  Future bounce() async {
    await _scaleAniController.forward();
    await _scaleAniController.animateBack(0);
  }
}
