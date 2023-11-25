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
        title: Text(
          'Marvel Character Profiles',
          style: TextStyle(
            fontFamily: 'Marvel',
            fontSize: 24.0,
          ),
        ),
        backgroundColor: Colors.red,
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
      body: Column(
        children: [
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Search Characters',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear, color: Colors.white),
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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 4 items per row
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: _filteredCharacters.length,
              itemBuilder: (context, index) {
                final character = _filteredCharacters[index];
                return InkWell(
                  onTap: () {
                    // Handle hero tap if needed
                  },
                  child: Card(
                    color: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            child: Image.asset(
                              character.imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          color: Colors.black.withOpacity(0.9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                character.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                character.description,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
  MarvelCharacter(
    name: 'Spider-Man',
    description: 'Friendly neighborhood superhero.',
    imageAsset: 'assets/spiderman.jpg',
  ),
  MarvelCharacter(
    name: 'Thor',
    description: 'God of Thunder with a mighty hammer.',
    imageAsset: 'assets/thor.jpg',
  ),
  MarvelCharacter(
    name: 'Black Panther',
    description: 'King of Wakanda with enhanced strength.',
    imageAsset: 'assets/blackpanther.jpg',
  ),
  MarvelCharacter(
    name: 'Scarlet Witch',
    description: 'Reality-warping mutant with magical abilities.',
    imageAsset: 'assets/scarletwitch.jpg',
  ),
  MarvelCharacter(
    name: 'Wolverine',
    description: 'Mutant with retractable claws and accelerated healing.',
    imageAsset: 'assets/wolverine.jpg',
  ),
  MarvelCharacter(
    name: 'Captain Marvel',
    description:
        'Air Force pilot with superhuman strength and energy projection.',
    imageAsset: 'assets/captainmarvel.jpg',
  ),
  MarvelCharacter(
    name: 'Ant-Man',
    description:
        'Master thief with a suit that allows him to shrink or grow in size.',
    imageAsset: 'assets/antman.jpg',
  ),
];

void main() {
  runApp(MaterialApp(
    home: CharacterProfiles(),
  ));
}
