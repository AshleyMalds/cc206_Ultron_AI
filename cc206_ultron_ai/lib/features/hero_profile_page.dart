class HeroProfile {
  final String name;
  final String imageUrl;
  final List<String> superpowers;

  const HeroProfile({
    required this.name,
    required this.imageUrl,
    required this.superpowers,
  });
}

// Example usage:

// Create a new hero profile.
HeroProfile heroProfile = const HeroProfile(
  name: 'Superman',
  imageUrl: 'https://example.com/superman.png',
  superpowers: ['Flight', 'Super strength', 'Invulnerability'],
);

// Get the hero's name.
String heroName = heroProfile.name;

// Get the hero's image URL.
String heroImageUrl = heroProfile.imageUrl;

// Get the hero's superpowers.
List<String> heroSuperpowers = heroProfile.superpowers;
