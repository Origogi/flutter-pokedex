import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/favorite_repository.dart';

class AddFavoritePokedexIdUsecase {
  final FavoriteRepository _favoriteRepository;

  AddFavoritePokedexIdUsecase(this._favoriteRepository);

  Future<void> execute(int id) async {
    await _favoriteRepository.add(id);
  }
}

final addFavoritePokedexIdUseCaseProvider = Provider<AddFavoritePokedexIdUsecase>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return AddFavoritePokedexIdUsecase(repository);
});