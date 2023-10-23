import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  Color selectedColor = Colors.blue; // Default selected color

  // List of available colors
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Select Cloth Color:',
          style: TextStyle(fontSize: 18),
        ),
        Column(
          children: colors.map((color) {
            return RadioListTile<Color>(
              title: Text(color.toString()), // Display color name
              value: color, // Color value
              groupValue: selectedColor, // Current selected color
              onChanged: (Color? value) {
                // Update selected color when user taps the radio button
                setState(() {
                  selectedColor = value!;
                });
              },
            );
          }).toList(),
        ),
        Text(
          'Selected Color: $selectedColor',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
