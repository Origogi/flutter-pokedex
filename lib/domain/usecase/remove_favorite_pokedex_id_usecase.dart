import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/favorite_repository.dart';

class RemoveFavoritePokedexIdUsecase {
  final FavoriteRepository _favoriteRepository;

  RemoveFavoritePokedexIdUsecase(this._favoriteRepository);

  Future<void> execute(int id) async {
    await _favoriteRepository.remove(id);
  }
}

final removeFavoritePokedexIdUseCaseProvider = Provider<RemoveFavoritePokedexIdUsecase>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return RemoveFavoritePokedexIdUsecase(repository);
});