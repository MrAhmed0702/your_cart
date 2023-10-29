import 'package:flutter/material.dart';

class ClothSizeSelector extends StatefulWidget {
  @override
  _ClothSizeSelectorState createState() => _ClothSizeSelectorState();
}

class _ClothSizeSelectorState extends State<ClothSizeSelector> {
  String _selectedSize = 'M'; // Default selected size

  List<String> _sizes = ['XS', 'S', 'M', 'L', 'XL']; // Available sizes

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedSize,
      icon: Icon(Icons.arrow_downward),
      iconSize: 28,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedSize = newValue!;
        });
      },
      items: _sizes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              color: Color.fromRGBO(107, 69, 217, 1),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        );
      }).toList(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Cloth Size Selector Example'),
      ),
      body: Center(
        child: ClothSizeSelector(),
      ),
    ),
  ));
}
