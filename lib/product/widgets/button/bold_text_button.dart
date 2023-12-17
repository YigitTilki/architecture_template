import 'package:flutter/material.dart';

///BoldTextButton Elevation 20
final class BoldTextButton extends TextButton {
  ///BoldTextButton Elevation 20
  BoldTextButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          style: TextButton.styleFrom(
            elevation: 20,
          ),
        );
}
