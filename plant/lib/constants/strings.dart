// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

class Strings {
  static _Button get Button => _Button();

  static _Home get Home => _Home();
}

class _Button {
  final String home = 'button.home';
  final String signIn = 'button.signIn';
}

class _Home {
  final String greetings = 'home.greetings';
  final String recommendedPlants = 'home.recommended_plants';
  final String featuredPlants = 'home.featured_plants';
}
