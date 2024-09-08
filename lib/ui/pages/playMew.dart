import 'package:flutter/material.dart';

class PlayMewPage extends StatefulWidget {
  @override
  _PlayMewPageState createState() => _PlayMewPageState();
}

class _PlayMewPageState extends State<PlayMewPage> {
  int _powerLevel = 0;

  void _increment() {
    setState(() {
      _powerLevel++;
    });
  }

  void _decrement() {
    setState(() {
      if (_powerLevel > 0) {
        _powerLevel--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play with me"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Play with me",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png', // Imagen de Mew
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),
            Text(
              "Power of level",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "$_powerLevel",
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decrement,
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Color de fondo
                    foregroundColor: Colors.red, // Color del texto
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _increment,
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Color de fondo
                    foregroundColor: Colors.red, // Color del texto
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


