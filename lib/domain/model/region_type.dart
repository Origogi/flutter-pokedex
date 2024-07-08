import 'package:pokedex/gen/assets.gen.dart';

enum RegionType {
  kanto(
    id: 1,
    name: 'Kanto',
    startPokedexId: 1,
    endPokedexId: 151,
    regionId: 1,
    startingPokedexIds: [1, 4, 7],
  ),
  johto(
    id: 2,
    name: 'Johto',
    startPokedexId: 152,
    endPokedexId: 251,
    regionId: 2,
    startingPokedexIds: [152, 155, 158],
  ),
  hoenn(
    id: 3,
    name: 'Hoenn',
    startPokedexId: 252,
    endPokedexId: 386,
    regionId: 3,
    startingPokedexIds: [252, 255, 258],
  ),
  sinnoh(
    id: 4,
    name: 'Sinnoh',
    startPokedexId: 387,
    endPokedexId: 493,
    regionId: 4,
    startingPokedexIds: [387, 390, 393],
  ),
  unova(
    id: 5,
    name: 'Unova',
    startPokedexId: 494,
    endPokedexId: 649,
    regionId: 5,
    startingPokedexIds: [495, 498, 501],
  ),

  kalos(
    id: 6,
    name: 'Kalos',
    startPokedexId: 650,
    endPokedexId: 721,
    regionId: 6,
    startingPokedexIds: [650, 653, 656],
  ),
  alola(
    id: 7,
    name: 'Alola',
    startPokedexId: 722,
    endPokedexId: 809,
    regionId: 7,
    startingPokedexIds: [722, 725, 728],
  );

  const RegionType({
    required this.id,
    required this.name,
    required this.startPokedexId,
    required this.endPokedexId,
    required this.regionId,
    required this.startingPokedexIds,
  });

  final int id;
  final String name;
  final int startPokedexId;
  final int endPokedexId;
  final int regionId;
  final List<int> startingPokedexIds;
}

extension RegionTypeExtension on RegionType {
  String get assetName => switch (this) {
        RegionType.kanto => Assets.images.regionKanto.path,
        RegionType.johto => Assets.images.regionJohto.path,
        RegionType.hoenn => Assets.images.regionHoenn.path,
        RegionType.sinnoh => Assets.images.regionSinnoh.path,
        RegionType.unova => Assets.images.regionUnova.path,
        RegionType.kalos => Assets.images.regionKalos.path,
        RegionType.alola => Assets.images.regionAlola.path,
      };

  List<String> get startingPokemonImages {
    return startingPokedexIds
        .map((id) =>
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/$id.png')
        .toList();
  }
}
