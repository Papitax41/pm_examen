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
  String resultado = "";
  String imagen = "";
  String mensaje = ""; // Agregamos una variable para el mensaje condicional

  @override
  Widget build(BuildContext context) {
    if (imc < 18.5) {
      resultado = "Bajo peso";
      imagen = "assets/images/bajo_peso.PNG"; // Ruta de la imagen de bajo peso
      mensaje = "Empieza a comer mas de forma progresiva y realiza ejercicios con peso"; // Mensaje para bajo peso
    } else if (imc >= 18.5 && imc <= 24.9) {
      resultado = "Normal";
      imagen = "assets/images/peso_normal.PNG"; // Ruta de la imagen de peso normal
      mensaje = "Tienes un peso normal, sigue así"; // Mensaje para peso normal
    } else if (imc >= 25.0 && imc <= 29.9) {
      resultado = "Sobrepeso";
      imagen = "assets/images/sobrepeso.PNG"; // Ruta de la imagen de sobrepeso
      mensaje = "Empieza a comer un poco menos de lo habitual y realiza ejercicios con peso"; // Mensaje para sobrepeso
    } else {
      resultado = "Obesidad";
      imagen = "assets/images/obesidad.PNG"; // Ruta de la imagen de obesidad
      mensaje = "Eealiza un deficit calorico de forma progresiva y realiza ejercicios con peso y de bajo impacto en las rodillas"; // Mensaje para obesidad
    }

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
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          imc = peso / ((altura / 100) * (altura / 100));
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow_sharp),
                          SizedBox(width: 10),
                          Text(
                            "Calcular",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              imagen,
              width: 400, // Ajusta el ancho de la imagen según tu preferencia
              height: 200, // Ajusta la altura de la imagen según tu preferencia
            ),
            SizedBox(height: 20),
            Text(
              "${imc.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 40,color:Colors.red ),
            ),
            Text(
              resultado,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              mensaje, // Muestra el mensaje condicional
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
