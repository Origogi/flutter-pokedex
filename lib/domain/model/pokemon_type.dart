import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/gen/assets.gen.dart';

enum PokemonType {
  fire(
    color: Color(0xFFFF9D55),
    bgColor: Color(0xFFFCF3EB),
    label: 'Fire',
  ),
  water(
    color: Color(0xFF5090D6),
    bgColor: Color(0xFFEBF1F8),
    label: 'Water',
  ),
  grass(
    color: Color(0xFF63BC5A),
    bgColor: Color(0xFFF1F6E8),
    label: 'Grass',
  ),
  electric(
    color: Color(0xFFF4D23C),
    bgColor: Color(0xFFFBF8E9),
    label: 'Electric',
  ),
  ice(
    color: Color(0xFF73CEC0),
    bgColor: Color(0xFFF1FBF9),
    label: 'Ice',
  ),
  fighting(
    color: Color(0xFFCE416B),
    bgColor: Color(0xFFF8E9EE),
    label: 'Fighting',
    labelColorOnSurface: Colors.white,
  ),
  poison(
    color: Color(0xFFB567CE),
    bgColor: Color(0xFFF5EDF8),
    label: 'Poison',
  ),
  ground(
    color: Color(0xFFD97845),
    bgColor: Color(0xFFF9EFEA),
    label: 'Ground',
  ),
  flying(
    color: Color(0xFF8FA8DD),
    bgColor: Color(0xFFF1F4FA),
    label: 'Flying',
  ),
  psychic(
    color: Color(0xFFFA7179),
    bgColor: Color(0xFFFCEEEF),
    label: 'Psychic',
  ),
  bug(
    color: Color(0xFF91C12F),
    bgColor: Color(0xFFF1F6E8),
    label: 'Bug',
  ),
  rock(
    color: Color(0xFFC5B78C),
    bgColor: Color(0xFFF7F5F1),
    label: 'Rock',
  ),
  ghost(
    color: Color(0xFF5269AD),
    bgColor: Color(0xFFEBEDF4),
    label: 'Ghost',
    labelColorOnSurface: Colors.white,
  ),
  dark(
    color: Color(0xFF5A5465),
    bgColor: Color(0xFFECEBED),
    label: 'Dark',
    labelColorOnSurface: Colors.white,
  ),
  dragon(
    color: Color(0xFF0A6DC4),
    bgColor: Color(0xFFE9F0FA),
    label: 'Dragon',
    labelColorOnSurface: Colors.white,
  ),
  steel(
    color: Color(0xFF5A8EA2),
    bgColor: Color(0xFFECF1F3),
    label: 'Steel',
  ),
  fairy(
    color: Color(0xFFEC8FE6),
    bgColor: Color(0xFFECEBED),
    label: 'Fairy',
  ),
  normal(
    color: Color(0xFF919AA2),
    bgColor: Color(0xFFF1F2F3),
    label: 'Normal',
  );

  const PokemonType({
    required this.color,
    required this.bgColor,
    required this.label,
    this.labelColorOnSurface = Colors.black,
  });

  final Color color;
  final Color bgColor;
  final String label;
  final Color labelColorOnSurface;

  String get iconAssetPath {
    return switch (this) {
      PokemonType.bug => Assets.icons.iconTypeBug,
      PokemonType.fire => Assets.icons.iconTypeFire,
      PokemonType.water => Assets.icons.iconTypeWater,
      PokemonType.grass => Assets.icons.iconTypeGrass,
      PokemonType.electric => Assets.icons.iconTypeElectric,
      PokemonType.ice => Assets.icons.iconTypeIce,
      PokemonType.fighting => Assets.icons.iconTypeFighting,
      PokemonType.poison => Assets.icons.iconTypePoison,
      PokemonType.ground => Assets.icons.iconTypeGround,
      PokemonType.flying => Assets.icons.iconTypeFlying,
      PokemonType.psychic => Assets.icons.iconTypePsychic,
      PokemonType.rock => Assets.icons.iconTypeRock,
      PokemonType.ghost => Assets.icons.iconTypeGhost,
      PokemonType.dark => Assets.icons.iconTypeDark,
      PokemonType.dragon => Assets.icons.iconTypeDragon,
      PokemonType.steel => Assets.icons.iconTypeSteel,
      PokemonType.fairy => Assets.icons.iconTypeFairy,
      PokemonType.normal => Assets.icons.iconTypeNormal,
    };
  }

  String get iconGradientAssetPath {
    return switch (this) {
      PokemonType.bug => Assets.icons.iconTypeBugGradient,
      PokemonType.fire => Assets.icons.iconTypeFireGradient,
      PokemonType.water => Assets.icons.iconTypeWaterGradient,
      PokemonType.grass => Assets.icons.iconTypeGrassGradient,
      PokemonType.electric => Assets.icons.iconTypeElectricGradient,
      PokemonType.ice => Assets.icons.iconTypeIceGradient,
      PokemonType.fighting => Assets.icons.iconTypeFightingGradient,
      PokemonType.poison => Assets.icons.iconTypePoisonGradient,
      PokemonType.ground => Assets.icons.iconTypeGroundGradient,
      PokemonType.flying => Assets.icons.iconTypeFlyingGradient,
      PokemonType.psychic => Assets.icons.iconTypePsychicGradient,
      PokemonType.rock => Assets.icons.iconTypeRockGradient,
      PokemonType.ghost => Assets.icons.iconTypeGhostGradient,
      PokemonType.dark => Assets.icons.iconTypeDarkGradient,
      PokemonType.dragon => Assets.icons.iconTypeDragonGradient,
      PokemonType.steel => Assets.icons.iconTypeSteelGradient,
      PokemonType.fairy => Assets.icons.iconTypeFairyGradient,
      PokemonType.normal => Assets.icons.iconTypeNormalGradient,
    };
  }

  static const _map = {
    'fire': PokemonType.fire,
    'water': PokemonType.water,
    'grass': PokemonType.grass,
    'electric': PokemonType.electric,
    'ice': PokemonType.ice,
    'fighting': PokemonType.fighting,
    'poison': PokemonType.poison,
    'ground': PokemonType.ground,
    'flying': PokemonType.flying,
    'psychic': PokemonType.psychic,
    'bug': PokemonType.bug,
    'rock': PokemonType.rock,
    'ghost': PokemonType.ghost,
    'dark': PokemonType.dark,
    'dragon': PokemonType.dragon,
    'steel': PokemonType.steel,
    'fairy': PokemonType.fairy,
    'normal': PokemonType.normal,
  };

  static PokemonType valueOf(String type) {
    return _map[type]!;
  }

}
