import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  double peso = 0;
  double altura = 0;
  double imc = 0;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${peso.toStringAsFixed(0)}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "kg",
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 255,
              value: peso,
              onChanged: (value) {
                setState(() {
                  peso = value;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${altura.toStringAsFixed(0)}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "cm",
                ),
              ],
            ),
            Slider(
              min: 0,
              max: 255,
              value: altura,
              onChanged: (value) {
                setState(() {
                  altura = value;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0), 
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          imc = peso / ((altura / 100) * (altura / 100));
                        });
                      },
                      child: Text("Calcular IMC"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "IMC: ${imc.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}