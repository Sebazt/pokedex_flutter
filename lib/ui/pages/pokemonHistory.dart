import 'package:flutter/material.dart';

class PokemonHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "🔥 A Little History 🔥",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),

        elevation: 0,
      ),
      body: Container(
        color: Colors.red, // Fondo rojo
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "Charmander and Its Evolutions",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildPokemonSection(
              "Charmander",
              "A Fire-type Pokémon known for the flame on its tail 🔥. If the flame goes out, it’s in trouble!",
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
            ),
            SizedBox(height: 20),
            _buildPokemonSection(
              "Charmeleon",
              "The first evolution of Charmander. A fiercer Pokémon, always ready for a fierce battle ⚔️.",
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png',
            ),
            SizedBox(height: 20),
            _buildPokemonSection(
              "Charizard",
              "Charmander’s final form. A dragon that rules the skies with its powerful flame and massive wings 🐉🔥.",
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPokemonSection(
      String name, String description, String imageUrl) {
    return Row(
      children: <Widget>[
        Image.network(
          imageUrl,
          height: 100,
          width: 100,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
