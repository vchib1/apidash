import 'package:flutter/material.dart';
import 'package:apidash/consts.dart';

class RawTextField extends StatelessWidget {
  const RawTextField({
    super.key,
    this.onChanged,
    this.controller,
    this.hintText,
    this.style,
  });

  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: style,
      decoration: InputDecoration(
        isDense: true,
        border: InputBorder.none,
        hintText: hintText,
        contentPadding: kPv8,
      ),
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
