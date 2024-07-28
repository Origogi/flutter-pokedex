import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/favorite_repository.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

class WatchFavoritePokemonCardInfoListUsecase {
  final PokemonInfoRepository _pokemonInfoRepository;
  final FavoriteRepository _favortieRepository;

  WatchFavoritePokemonCardInfoListUsecase({
    required PokemonInfoRepository pokemonInfoRepository,
    required FavoriteRepository favoriteRepository,
  }) : _pokemonInfoRepository = pokemonInfoRepository,
       _favortieRepository = favoriteRepository;

  
  Stream<List<PokemonCardInfo>> watch() {
    return _favortieRepository.watch().asyncMap((favoriteIds) async {
      final pokemonCardInfos = (await Future.wait(
        favoriteIds.map((id) => _pokemonInfoRepository.getById(id)),
      )).map(
        (pokemonInfo) => PokemonCardInfo(
          pokedexId: pokemonInfo.pokedexId,
          name: pokemonInfo.name,
          imageUrl: pokemonInfo.imageUrl,
          types: pokemonInfo.types,
        ),
      ).toList();

      pokemonCardInfos.sort((a, b) => a.pokedexId.compareTo(b.pokedexId));

      return pokemonCardInfos;
    });
  }
}

final watchFavoritePokemonCardInfoListUsecaseProvider = Provider.autoDispose(
  (ref) => WatchFavoritePokemonCardInfoListUsecase(
    pokemonInfoRepository: ref.watch(pokemonInfoRepositoryProvider),
    favoriteRepository: ref.watch(favoriteRepositoryProvider),
  ),
);