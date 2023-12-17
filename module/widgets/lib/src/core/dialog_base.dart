import 'package:flutter/material.dart';

final class DialogBase {
  DialogBase._();

  /// general dialog with [builder]
  static Future<T?> show<T>({
    required WidgetBuilder builder,
    required BuildContext context,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
