extension StringExtension on String {
  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

extension IntExtension on int {
  String pokedexIdFormat() {
    return 'Nº${toString().padLeft(3, '0')}';
  }
}