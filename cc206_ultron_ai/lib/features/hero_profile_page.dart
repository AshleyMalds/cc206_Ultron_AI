import 'package:flutter/material.dart';

class HeroProfilePage extends StatelessWidget {
  final String heroName;
  final String heroImageAsset;
  final String heroBackstory;
  final String heroPowers;
  final int heroAge;
  final List<String> heroAffiliations;

  const HeroProfilePage({
    Key? key,
    required this.heroName,
    required this.heroImageAsset,
    required this.heroBackstory,
    required this.heroPowers,
    required this.heroAge,
    required this.heroAffiliations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heroName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Display the hero's image.
            Image.asset(heroImageAsset),

            // Display the hero's backstory.
            Text(heroBackstory),

            // Display the hero's powers.
            Text('Powers: $heroPowers'),

            // Display the hero's age.
            Text('Age: $heroAge years old'),

            // Display the hero's affiliations.
            Text('Affiliations: ${heroAffiliations.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
// class HeroProfile {
//   final String name;
//   final String imageUrl;
//   final List<String> superpowers;

//   const HeroProfile({
//     required this.name,
//     required this.imageUrl,
//     required this.superpowers,
//   });
// }

// // Example usage:

// // Create a new hero profile.
// HeroProfile heroProfile = HeroProfile(
//   name: 'Superman',
//   imageUrl: 'https://example.com/superman.png',
//   superpowers: ['Flight', 'Super strength', 'Invulnerability'],
// );

// // Get the hero's name.
// String heroName = heroProfile.name;

// // Get the hero's image URL.
// String heroImageUrl = heroProfile.imageUrl;

// // Get the hero's superpowers.
// List<String> heroSuperpowers = heroProfile.superpowers;
