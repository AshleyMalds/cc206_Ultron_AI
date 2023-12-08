import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart';
import 'package:cc206_ultron_ai/features/settings_page.dart'; // Import the SettingsPage

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
          title: Row(
            children: [
              Image.asset('asset/logo.png', width: 30, height: 30),
              SizedBox(width: 10),
              Text('Marvel Superheroes',
                  style: GoogleFonts.robotoSlab(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            )
          ]),
      drawer: HomeDrawer(), //drawer codes
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/superheroes.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500.0),
                child: TextField(
                  controller: _searchController,
                  style: TextStyle(color: Colors.white),
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Marvel Characters',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon:
                        Icon(Icons.search, color: Colors.white), //appbar text
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                        });
                      },
                    ),
                    contentPadding: EdgeInsets.all(0),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: _filteredCharacters.length,
                itemBuilder: (context, index) {
                  final character = _filteredCharacters[index];
                  return InkWell(
                    onTap: () {
                      if (character.name == 'Captain America') {
                        _showCaptainAmericaProfile(context, character);
                      } else if (character.name == 'Hulk') {
                        _showHulkProfile(context, character);
                      } else if (character.name == 'Scarlet Witch') {
                        _showScarletWitchProfile(context, character);
                      } else if (character.name == 'Iron Man') {
                        _showIronManProfile(context, character);
                      }
                    },
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.black, // Set border color
                          width: 2.0, // Set border width
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(character.gifUrl),
                            fit: BoxFit.cover,
                          ),
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
                                child: Image.network(
                                  character.gifUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              color: Colors.black,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    character.name,
                                    style: GoogleFonts.robotoSlab(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    character.description,
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

void _showCaptainAmericaProfile(
    //captain america popup
    BuildContext context,
    MarvelCharacter character) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          width: 300,
          height: 510,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage('asset/background3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/logo.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      character.name,
                      style: GoogleFonts.robotoSlab(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image.network(
                character.gifUrl,
                height: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${character.name}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Description: ${character.description}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Steve Rogers, known by his superhero alias Captain America, is a patriotic and courageous '
                      'super-soldier. Created during World War II as part of the Super Soldier program, Steve underwent '
                      'a transformation that turned him into the pinnacle of human physical and mental potential.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Captain America wields a vibranium shield, which is not only an indestructible defensive weapon but '
                      'also a powerful offensive tool. He is a master tactician and an inspirational leader, guiding the '
                      'Avengers through some of their toughest battles.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                child: Text(
                  'Close',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showHulkProfile(BuildContext context, MarvelCharacter character) {
  //hulk profile popup
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage('asset/background3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/logo.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      character.name,
                      style: GoogleFonts.robotoSlab(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image.network(
                character.gifUrl,
                height: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${character.name}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Description: ${character.description}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hulk is a powerful and uncontrollable force of nature. Dr. Bruce Banner, a brilliant scientist, '
                      'transforms into the Hulk when exposed to gamma radiation. As the Hulk, Banner possesses superhuman '
                      'strength, durability, and the ability to regenerate from injuries.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'In times of extreme stress or anger, Banner undergoes the transformation, unleashing the Hulk to '
                      'deal with the threats he faces. The Hulk\'s immense strength makes him a formidable ally in the battle '
                      'against powerful adversaries.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                child: Text(
                  'Close',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showScarletWitchProfile(BuildContext context, MarvelCharacter character) {
  //scarletwitch profile popup
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          width: 300,
          height: 470,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage('asset/background3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/logo.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      character.name,
                      style: GoogleFonts.robotoSlab(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image.network(
                character.gifUrl,
                height: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${character.name}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Description: ${character.description}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Scarlet Witch, also known as Wanda Maximoff, is a powerful mutant with reality-warping abilities. '
                      'Her hex powers allow her to manipulate probability and alter the fabric of reality. Wanda is a '
                      'complex character who has been both a hero and a villain in the Marvel Universe.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Scarlet Witch abilities make her a formidable force on the battlefield, and her connection to '
                      'magical energies adds an element of mystery to her character.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                child: Text(
                  'Close',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showIronManProfile(BuildContext context, MarvelCharacter character) {
  //ironman profile popup
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage('asset/background3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/logo.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      character.name,
                      style: GoogleFonts.robotoSlab(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image.network(
                character.gifUrl,
                height: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${character.name}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Description: ${character.description}',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Tony Stark, also known as Iron Man, is a genius billionaire, inventor, and philanthropist. '
                      'Stark is the armored superhero with a powered exoskeleton, giving him superhuman strength, '
                      'durability, and flight. As Iron Man, Tony Stark is a founding member of the Avengers and a '
                      'key figure in the Marvel Universe.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The Iron Man technological prowess and quick-witted personality make him a fan-favorite character. '
                      'He relies on his intelligence and a suit of advanced armor to protect the world from various threats.',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                child: Text(
                  'Close',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class MarvelCharacter {
  final String name;
  final String description;
  final String gifUrl;

  MarvelCharacter({
    this.name = '',
    this.description = '',
    this.gifUrl = '',
  });
}

final List<MarvelCharacter> marvelCharacters = [
  //profile contents
  MarvelCharacter(
    name: 'Iron Man',
    description: 'The Genius Billionaire.',
    gifUrl: 'https://media.tenor.com/lcxWZZ3yseUAAAAC/avengers-iron-man.gif',
  ),
  MarvelCharacter(
    name: 'Captain America',
    description: 'Shield-wielding Super Soldier.',
    gifUrl:
        'https://media.tenor.com/phzTPEhdWXMAAAAC/avengers-captain-america.gif',
  ),
  MarvelCharacter(
    name: 'Scarlet Witch',
    description: 'Reality-warping mutant with magical abilities.',
    gifUrl: 'https://media3.giphy.com/media/1Euph36tcV2KmmgGEC/giphy.gif',
  ),
  MarvelCharacter(
    name: 'Hulk',
    description: 'Green-skinned Muscular Humanoid.',
    gifUrl: 'https://i.gifer.com/FrfI.gif',
  ),
  MarvelCharacter(
    name: 'Doctor Strange',
    description: 'Super Powered Doctor.',
    gifUrl: 'https://media.tenor.com/sfWCsNSTyiMAAAAd/dr-strange-spiderman.gif',
  ),
  MarvelCharacter(
    name: 'Spider-Man',
    description: 'Friendly neighborhood superhero.',
    gifUrl:
        'https://64.media.tumblr.com/765267a8d88b00e4f690b6f0a3a36b05/174899d1ccd4e9fc-69/s640x960/3364cd94fc0b5bd5016117115517ff79cec7b10d.gif',
  ),
  MarvelCharacter(
    name: 'Thor',
    description: 'God of Thunder with a mighty hammer.',
    gifUrl: 'https://media.tenor.com/sfKHpMViajAAAAAC/thor-chris-hemsworth.gif',
  ),
  MarvelCharacter(
    name: 'Black Panther',
    description: 'The King of Wakanda.',
    gifUrl:
        'https://discourse.disneyheroesgame.com/uploads/default/original/3X/a/b/abaee97b0c59d8bbf69322b3f98a8031385f9498.gif',
  ),
  MarvelCharacter(
    name: 'Black Widow',
    description: 'Super-soldier Assassin.',
    gifUrl: 'https://media.tenor.com/qs19zzFBOdoAAAAC/black-widow-marvel.gif',
  ),
  MarvelCharacter(
    name: 'Wolverine',
    description: 'Mutant with retractable claws and accelerated healing.',
    gifUrl: 'https://media2.giphy.com/media/yEStAKFg8EA3S/giphy.gif',
  ),
  MarvelCharacter(
    name: 'Captain Marvel',
    description:
        'Air Force pilot with superhuman strength and energy projection.',
    gifUrl:
        'https://media.tenor.com/2xG0yexEEY0AAAAC/captain-marvel-marvel-comics.gif',
  ),
  MarvelCharacter(
    name: 'Ant-Man',
    description: 'Skilled thief equipped with a cutting-edge suit.',
    gifUrl: 'https://media3.giphy.com/media/118u58QrLaLnDG/giphy.gif',
  ),
];

void main() {
  runApp(MaterialApp(
    home: CharacterProfiles(),
  ));
}
