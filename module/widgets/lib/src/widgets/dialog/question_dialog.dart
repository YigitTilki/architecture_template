import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// User Question Answer
final class QuestionAnswer {
  /// Constructor
  QuestionAnswer({required this.response});

  /// Answer Text
  final String response;
}

/// Show a dialog for success.
final class QuestionDialog extends StatefulWidget {
  /// Constructor for dialog
  const QuestionDialog({required this.title, super.key});

  /// title for the dialog
  final String title;

  ///show the dialog for success
  static Future<QuestionAnswer?> show({
    required String title,
    required BuildContext context,
  }) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (BuildContext context) => QuestionDialog(
        title: title,
      ),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) Navigator.of(context).pop(null);

            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
