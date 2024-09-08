import 'package:flutter/material.dart';

class PokemonModel {
  final IconData iconLeft;
  final String nombre;
  final String description;

  // Constructor posicional
  PokemonModel(this.nombre, this.description, this.iconLeft);
}

