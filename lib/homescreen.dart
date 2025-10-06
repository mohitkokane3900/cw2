import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> recipes = [
    {
      'title': 'Lemon Pasta',
      'ingredients': [
        'Spaghetti',
        'Lemon',
        'Butter',
        'Parmesan',
        'Salt',
        'Pepper',
      ],
      'steps': [
        'Boil pasta',
        'Melt butter',
        'Add lemon zest',
        'Toss with pasta',
        'Season and serve',
      ],
    },
    {
      'title': 'Avocado Toast',
      'ingredients': ['Bread', 'Avocado', 'Lime', 'Chili Flakes', 'Salt'],
      'steps': [
        'Toast bread',
        'Mash avocado',
        'Add lime and salt',
        'Spread and top with chili flakes',
      ],
    },
    {
      'title': 'Berry Parfait',
      'ingredients': ['Yogurt', 'Berries', 'Granola', 'Honey'],
      'steps': [
        'Layer yogurt',
        'Add berries',
        'Sprinkle granola',
        'Drizzle honey',
      ],
    },
  ];

  void openDetails(Map<String, dynamic> r) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => DetailsScreen(
          title: r['title'],
          ingredients: List<String>.from(r['ingredients']),
          steps: List<String>.from(r['steps']),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Recipes')),
      body: SafeArea(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, i) {
            final r = recipes[i];
            return ListTile(
              title: Text(r['title']),
              subtitle: Text(
                '${(r['ingredients'] as List).length} ingredients',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => openDetails(r),
            );
          },
        ),
      ),
    );
  }
}
