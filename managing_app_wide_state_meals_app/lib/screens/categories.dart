import 'package:flutter/material.dart';

import 'package:managing_app_wide_state_meals_app/data/dummy_data.dart';
import 'package:managing_app_wide_state_meals_app/models/category.dart';
import 'package:managing_app_wide_state_meals_app/models/meal.dart';
import 'package:managing_app_wide_state_meals_app/screens/meals.dart';
import 'package:managing_app_wide_state_meals_app/widgets/cateogry_grid_item.dart';

class CategoiresScreen extends StatelessWidget {
  const CategoiresScreen({super.key, required this.onTaggleFav, required this.availbleMeals});
  final void Function(Meal meal) onTaggleFav;
  final List<Meal> availbleMeals;

  void _selectCategory(BuildContext context, Category category) {
    final meals = availbleMeals.where((meal) => meal.categories.contains(category.id)).toList();
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