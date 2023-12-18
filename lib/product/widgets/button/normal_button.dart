// ignore_for_file: public_member_api_docs

import 'package:architecture_template/product/utility/constants/project_radius.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({required this.title, required this.onPressed, super.key});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius: ProjectRadius.normal.value,
      child: Text(title),
    );
  }
}
