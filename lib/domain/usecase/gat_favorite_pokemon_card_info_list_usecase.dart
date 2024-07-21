import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/favorite_repository.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

class GetFavoritePokemonCardInfoListUsecase {
  final PokemonInfoRepository _pokemonInfoRepository;
  final FavoriteRepository _favortieRepository;


  GetFavoritePokemonCardInfoListUsecase({
    required PokemonInfoRepository pokemonInfoRepository,
    required FavoriteRepository favoriteRepository,
  }) : _pokemonInfoRepository = pokemonInfoRepository,
       _favortieRepository = favoriteRepository;

  
  Future<List<PokemonCardInfo>> execute() async {
    final favorites = await _favortieRepository.getAll();

    final infos = await Future.wait(
      favorites.map((id) => _pokemonInfoRepository.getById(id)),
    );

    infos.sort((a, b) => a.pokedexId.compareTo(b.pokedexId));

    return infos.map(
      (pokemonInfo) => PokemonCardInfo(
        pokedexId: pokemonInfo.pokedexId,
        name: pokemonInfo.name,
        imageUrl: pokemonInfo.imageUrl,
        types: pokemonInfo.types,
      ),
    ).toList();
  }
}


final getFavoritePokemonCardInfoListUsecaseProvider = Provider.autoDispose(
  (ref) => GetFavoritePokemonCardInfoListUsecase(
    pokemonInfoRepository: ref.watch(pokemonInfoRepositoryProvider),
    favoriteRepository: ref.watch(favoriteRepositoryProvider),
  ),
);