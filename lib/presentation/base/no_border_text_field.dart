import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NoBorderTextField extends StatefulWidget {
  TextEditingController? controller;
  TextStyle? style;
  TextStyle? hintStyle;
  int? maxLength;
  int? maxLines;
  bool? autofocus;
  bool? showDefaultCounterText;
  String? hintText;
  FocusNode? focusNode;
  void Function(String)? onChanged;
  void Function(String)? onSubmitted;

  @override
  State<NoBorderTextField> createState() =>
      _NoBorderTextFieldState();

  NoBorderTextField(
      {this.controller,
        this.focusNode,
        this.style,
        this.hintText,
        this.onSubmitted,
        this.autofocus,
        this.showDefaultCounterText,
        this.maxLength,
        this.hintStyle,
        this.maxLines,
        this.onChanged});
}

class _NoBorderTextFieldState extends State<NoBorderTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: widget.onSubmitted,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      autofocus: widget.autofocus ?? false,
      decoration: InputDecoration(
        border: InputBorder.none,
        isDense: true,
        contentPadding: const EdgeInsets.all(0),
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        hintMaxLines: null,
        enabledBorder: InputBorder.none,
        counterText: (widget.showDefaultCounterText ?? true) ? null : "",
      ),
      controller: widget.controller,
      style: widget.style,
    );
  }
}
