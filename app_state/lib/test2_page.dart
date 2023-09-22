import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  bool isDescriptionJustify = false;
  double valueGreenSlider = 0;
  double valueBlueSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura",
              style: TextStyle(
                color: Color.fromRGBO(valueGreenSlider.toInt(), valueBlueSlider.toInt(),120,1),
              ),
            ),

            Text(
              "Kg",
              style: TextStyle(
                color: Color.fromRGBO(valueGreenSlider.toInt(), valueBlueSlider.toInt(),120,1),
              ),
            ),

            Slider(
              min: 0,
              max: 255,
              value: valueGreenSlider,
              onChanged: (value) {
                print(value);
                valueGreenSlider = value;
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueBlueSlider,
              label: valueBlueSlider.round().toString(),
              onChanged: (value) {
                print(value);
                valueBlueSlider = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}