import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/region_type.dart';

@RoutePage()
class RegionDetailScreen extends StatelessWidget {
  const RegionDetailScreen({
    Key? key,
    required this.regionType,
  }) : super(key: key);

  final RegionType regionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Region Detail'),
      ),
      body: Center(
        child: Text(regionType.name),
      ),
    );
  }
}