import 'package:flutter/material.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Favorites Tab',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}