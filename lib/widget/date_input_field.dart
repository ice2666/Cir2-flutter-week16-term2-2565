import 'package:flutter/material.dart';

class DateInputField extends StatefulWidget {
  final TextEditingController dateInput;
  const DateInputField({Key? key, required this.dateInput}) : super(key: key);

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: widget.dateInput,
          ),
        ),
        SizedBox(
          width: 32,
          child: IconButton(
            onPressed: () async {
              DateTime? _date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), //get today's date
                  firstDate:DateTime(1000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2100)
              );
              widget.dateInput.text =
              "${_date!.day}/${_date.month}/${_date.year}";
            },
            icon: Icon(Icons.calendar_today),
          ),
        ),
      ],
    );
  }
}