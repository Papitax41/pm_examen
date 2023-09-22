import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura",
            ),
            SizedBox(height: 20),
            Text(
              "${valueGreenSlider.toStringAsFixed(0)} Kg",
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueGreenSlider,
              onChanged: (value) {
                setState(() {
                  valueGreenSlider = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              "${valueBlueSlider.toStringAsFixed(0)} Cm",
              ),
            Slider(
              min: 0,
              max: 255,
              value: valueBlueSlider,
              onChanged: (value) {
                setState(() {
                  valueBlueSlider = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}