import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteRepository {
  final sharedPreferenceKey = 'favorite_pokemon';
  final StreamController<List<int>> _controller =
      StreamController<List<int>>.broadcast();

  // init
  FavoriteRepository() {
    _read().then((data) {
      _controller.add(data.map((e) => int.parse(e)).toList());
    });
  }

  Future<void> add(int id) async {
    final data = await _read();

    if (data.contains(id.toString())) {
      return;
    }

    final newData = [...data, id.toString()];

    await _write(newData);

    _controller.add(newData.map((e) => int.parse(e)).toList());
  }

  Future<void> remove(int id) async {
    final data = await _read();

    if (!data.contains(id.toString())) {
      return;
    }

    final newData = data.where((element) => element != id.toString()).toList();

    await _write(newData);

    _controller.add(newData.map((e) => int.parse(e)).toList());
  }

  Future<List<int>> getAll() async {
    final data = await _read();

    return data.map((e) => int.parse(e)).toList();
  }

  Stream<List<int>> watch() {
    return _controller.stream;
  }

  Future<bool> isFavorite(int id) async {
    final data = await _read();

    return data.contains(id.toString());
  }

  Future<List<String>> _read() async {
    final prefs = await SharedPreferences.getInstance();

    final data = prefs.getStringList(sharedPreferenceKey);

    return data ?? [];
  }

  Future<void> _write(List<String> data) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setStringList(sharedPreferenceKey, data);
  }
}

final favoriteRepositoryProvider = Provider((ref) => FavoriteRepository());
