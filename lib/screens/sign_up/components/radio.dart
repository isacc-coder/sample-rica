import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class RadioForm extends StatefulWidget {
  const RadioForm({Key? key}) : super(key: key);

  @override
  State<RadioForm> createState() => _RadioFormState();
}

class _RadioFormState extends State<RadioForm> {
  String _selectedGender = 'Male';
  List<String> _status = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: <Widget>[
        // Expanded(
        //   child: Text("Gender",
        //       style: TextStyle(fontSize: 10), textAlign: TextAlign.start),
        // ),
        RadioGroup<String>.builder(
          direction: Axis.horizontal,
          groupValue: _selectedGender,
          horizontalAlignment: MainAxisAlignment.start,
          onChanged: (value) => setState(() {
            _selectedGender = value!;
          }),
          items: _status,
          textStyle: TextStyle(fontSize: 15, color: Colors.blue),
          itemBuilder: (item) => RadioButtonBuilder(
            item,
          ),
        ),
      ]),

      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     const Text('Gender:'),
      //     Radio<String>(
      //       value: 'male',
      //       groupValue: _selectedGender,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedGender = value!;
      //         });
      //       },
      //       //const Text("male"),
      //     ),
      //     Radio<String>(
      //       // leading: Radio<String>(
      //       value: 'female',
      //       groupValue: _selectedGender,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedGender = value!;
      //         });
      //       },

      //       // title: const Text('Female'),
      //     ),
      //   ],
      // ),
    );
  }
}
