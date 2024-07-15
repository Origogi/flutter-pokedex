import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/favorite_repository.dart';

class IsFavoritePokedexIdUsecase {
  final FavoriteRepository _favoriteRepository;

  IsFavoritePokedexIdUsecase(this._favoriteRepository);

  Stream<bool> watch(int id) {
    return _favoriteRepository.watch().map((data) => data.contains(id));
  }

  Future<bool> execute(int id) async {
    return _favoriteRepository.isFavorite(id);
  }
}

final watchIsFavoritePokedexIdUseCaseProvider =
    Provider<IsFavoritePokedexIdUsecase>((ref) {
  final repository = ref.watch(favoriteRepositoryProvider);
  return IsFavoritePokedexIdUsecase(repository);
});
