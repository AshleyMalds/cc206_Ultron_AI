import 'package:flutter/material.dart';

class CharacterProfiles extends StatefulWidget {
  @override
  _CharacterProfilesState createState() => _CharacterProfilesState();
}

class _CharacterProfilesState extends State<CharacterProfiles> {
  TextEditingController _searchController = TextEditingController();

  List<MarvelCharacter> _filteredCharacters = List.from(marvelCharacters);

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterCharacterList);
  }

  void _filterCharacterList() {
    String searchText = _searchController.text.toLowerCase();

    setState(() {
      _filteredCharacters = marvelCharacters.where((character) {
        return character.name.toLowerCase().contains(searchText);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvel Character Profiles'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _searchController.clear();
                _filteredCharacters = List.from(marvelCharacters);
              });
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 220), // Margin on the sides
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0), // Padding inside the column
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search Characters',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredCharacters.length,
                itemBuilder: (context, index) {
                  final character = _filteredCharacters[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(character.imageAsset),
                    ),
                    title: Text(character.name),
                    subtitle: Text(character.description),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarvelCharacter {
  final String name;
  final String description;
  final String imageAsset;

  MarvelCharacter({
    this.name = '',
    this.description = '',
    this.imageAsset = '',
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
    description: 'Green-skinned, muscular humanoid.',
    imageAsset: 'assets/hulk.jpg',
  ),
  MarvelCharacter(
    name: 'Doctor Strange',
    description: 'Super Powered Doctor.',
    imageAsset: 'assets/doctorstrange.jpg',
  ),
];

void main() {
  runApp(MaterialApp(
    home: CharacterProfiles(),
  ));
}
