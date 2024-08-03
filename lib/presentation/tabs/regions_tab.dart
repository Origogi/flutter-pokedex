import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/region_type.dart';
import 'package:pokedex/presentation/routers.dart';
import 'package:pokedex/presentation/theme/common_colors.dart';

class RegionsTab extends StatelessWidget {
  const RegionsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
          child: Text("Regions",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
        ),
        const Divider(
          height: 1,
          color: Black50,
        ),
        Expanded(
          child: ListView(
            children: RegionType.values
                .map(
                  (region) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: _RegionItem(
                      region: region,
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class _RegionItem extends StatelessWidget {
  const _RegionItem({
    required this.region,
  });

  final RegionType region;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(RegionDetailRoute(regionType: region));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 102,
          child: Stack(
            children: [
              Image.asset(
                region.assetName,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      region.name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    const Gap(6),
                    Text(
                      "${region.id}º GENERATION",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Black200),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 16,
                top: 0,
                bottom: 0,
                child: Row(
                  children: region.startingPokemonImages
                      .mapIndexed(
                        (i, e) => Padding(
                          padding: EdgeInsets.only(left: i == 0 ? 0 : 6),
                          child: Image.network(
                            e,
                            height: 50,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
