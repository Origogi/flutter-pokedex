import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/theme/common_colors.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
          child: Row(
            children: [
              Image.asset(
                Assets.images.anoymous.path,
                width: 40,
                height: 40,
              ),
              const Gap(12),
              Text(
                "Anomymous",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
          color: Black50,
        ),
        const Gap(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Information",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Gap(16),
              Text("Name", style: Theme.of(context).textTheme.labelMedium),
              Text(
                "Anomymous",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Black700,
                    ),
              ),
              const Gap(16),
              Text("Email", style: Theme.of(context).textTheme.labelMedium),
              Text(
                "anomymous@test.com",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Black700,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
