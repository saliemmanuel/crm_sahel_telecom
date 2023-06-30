import 'package:fluent_ui/fluent_ui.dart';

alertDialogue(var context, {String? title, String? content}) {
  return showDialog<String>(
    context: context,
    builder: (context) => ContentDialog(
      title: Text(title!),
      content: Text(content!),
      actions: [
        FilledButton(
          child: const Text('Fermer'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}
