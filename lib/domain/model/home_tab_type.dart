
import 'package:pokedex/gen/assets.gen.dart';

enum HomeTab {
  pokedex(label: "Pokédex"),
  regions(label: "Regions"),
  favorites(label: "Favorites"),
  profile(label: "Profile");

  const HomeTab({required this.label});
  final String label;
}

extension HomeTabX on HomeTab {
  String get onIcon {
    switch (this) {
      case HomeTab.pokedex:
        return Assets.icons.iconPokedexOn;
      case HomeTab.regions:
        return Assets.icons.iconRegionOn;
      case HomeTab.favorites:
        return Assets.icons.iconFavOn;
      case HomeTab.profile:
        return Assets.icons.iconProfileOn;
    }
  }

  String get offIcon {
    switch (this) {
      case HomeTab.pokedex:
        return Assets.icons.iconPokedexOff;
      case HomeTab.regions:
        return Assets.icons.iconRegionOff;
      case HomeTab.favorites:
        return Assets.icons.iconFavOff;
      case HomeTab.profile:
        return Assets.icons.iconProfileOff;
    }
  }
}