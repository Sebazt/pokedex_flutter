import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/ui/pages/charmanderPages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PokemonModel pikachu =
      PokemonModel('Pikachu', 'An electric Pokémon', Icons.flash_on);
  final PokemonModel charmander =
      PokemonModel('Charmander', 'A fire Pokémon', Icons.whatshot);
  final PokemonModel bulbasaur =
      PokemonModel('Bulbasaur', 'A grass/poison Pokémon', Icons.grass);
  final PokemonModel squirtle =
      PokemonModel('Squirtle', 'A water Pokémon', Icons.water);
  final PokemonModel jigglypuff =
      PokemonModel('Jigglypuff', 'A fairy Pokémon', Icons.music_note);
  final PokemonModel meowth =
      PokemonModel('Meowth', 'A normal Pokémon', Icons.pets);
  final PokemonModel psyduck =
      PokemonModel('Psyduck', 'A water Pokémon', Icons.pool);
  final PokemonModel machop =
      PokemonModel('Machop', 'A fighting Pokémon', Icons.fitness_center);
  final PokemonModel gengar =
      PokemonModel('Gengar', 'A ghost/poison Pokémon', Icons.person);

  Widget customListTile(PokemonModel pok) {
    return Builder(
      builder: (BuildContext context) {
        return ListTile(
          title: Text(pok.nombre),
          subtitle: Text(pok.description),
          textColor: Colors.white,
          leading: Icon(pok.iconLeft),
          onTap: () {
            if (pok.nombre == 'Charmander') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CharmanderPage()),
              );
            }
          },
        );
      },
    );
  }

  MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primaryColor: Colors.red,
      textTheme: TextTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
        backgroundColor: Colors.white,
        flexibleSpace: Center(
          child: Text(
            "Pokedex",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 0, 0),
        child: ListView(
          children: <Widget>[
            customListTile(pikachu),
            customListTile(charmander),
            customListTile(bulbasaur),
            customListTile(squirtle),
            customListTile(jigglypuff),
            customListTile(meowth),
            customListTile(psyduck),
            customListTile(machop),
            customListTile(gengar),
          ],
        ),
      ),
    ),
  );
}}
