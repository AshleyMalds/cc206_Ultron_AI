import 'package:flutter/material.dart';

class CharacterProfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvel Character Profiles'),
      ),
      body: ListView.builder(
        itemCount: marvelCharacters.length,
        itemBuilder: (context, index) {
          final character = marvelCharacters[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(character.imageAsset),
            ),
            title: Text(character.name),
            subtitle: Text(character.description),
          );
        },
      ),
    );
  }
}

class MarvelCharacter {
  final String name;
  final String description;
  final String imageAsset;

  MarvelCharacter({
    required this.name,
    required this.description,
    required this.imageAsset,
  });
}

final List<MarvelCharacter> marvelCharacters = [
  MarvelCharacter(
    name: 'Iron Man',
    description: 'Genius, billionaire, philanthropist.',
    imageAsset: 'assets/iron_man.jpg',
  ),
  MarvelCharacter(
    name: 'Captain America',
    description: 'Super-soldier and shield-wielding hero.',
    imageAsset: 'assets/captain_america.jpg',
  ),
  MarvelCharacter(
    name: 'Black Widow',
    description: 'Super-soldier Assassin.',
    imageAsset: 'assets/blackwidow.jpg',
  ),
  MarvelCharacter(
    name: 'Hulk',
    description: 'Green-skined, muscular humanoid.',
    imageAsset: 'assets/hulk.jpg',
  ),
  MarvelCharacter(
    name: 'Doctor Strange',
    description: 'Super Powered Doctor.',
    imageAsset: 'assets/doctorstrange.jpg',
  ),
];
