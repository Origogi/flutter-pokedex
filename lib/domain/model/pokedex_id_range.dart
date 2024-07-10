
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_id_range.freezed.dart';

@freezed
class PokedexIdRange with _$PokedexIdRange {
  const factory PokedexIdRange({
    required int start,
    required int end,
  }) = _PokedexIdRange;
}