import 'package:flutter/material.dart';

class SingleListTile extends StatefulWidget {
  @override
  State<SingleListTile> createState() => _SingleListTileState();
}

class _SingleListTileState extends State<SingleListTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({
    required this.checkboxState,
    required this.toggleCheckboxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.redAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState as void Function(bool? value)?,
    );
  }
}
