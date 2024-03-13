import 'package:flutter/material.dart';

import 'package:multi_screen_navigation_meals_app/data/dummy_data.dart';
import 'package:multi_screen_navigation_meals_app/models/category.dart';
import 'package:multi_screen_navigation_meals_app/models/meal.dart';
import 'package:multi_screen_navigation_meals_app/screens/meals.dart';
import 'package:multi_screen_navigation_meals_app/widgets/cateogry_grid_item.dart';

class CategoiresScreen extends StatelessWidget {
  const CategoiresScreen({super.key, required this.onTaggleFav});
  final void Function(Meal meal) onTaggleFav;

  void _selectCategory(BuildContext context, Category category) {
    final meals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (ctx) => 
        MealsScreen(
          title: category.title,
          meals: meals,
          onTaggleFav: onTaggleFav,)
    );

    Navigator.push(context, materialPageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category, 
              onSelectCategory: () {
                _selectCategory(context, category);
              })
        ],
    );    
  }

}