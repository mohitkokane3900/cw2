import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final List<String> ingredients;
  final List<String> steps;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.ingredients,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text('Ingredients', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            ...ingredients.map(
              (i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle_outline, size: 18),
                    const SizedBox(width: 8),
                    Expanded(child: Text(i)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Instructions', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            ...steps.asMap().entries.map((e) {
              final idx = e.key + 1;
              final step = e.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 12, child: Text('$idx')),
                    const SizedBox(width: 8),
                    Expanded(child: Text(step)),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
