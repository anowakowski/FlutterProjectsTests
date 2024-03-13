import 'package:flutter/material.dart';

import 'package:multi_screen_navigation_meals_app/models/meal.dart';
import 'package:multi_screen_navigation_meals_app/screens/meal_details.dart';
import 'package:multi_screen_navigation_meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.title, required this.meals, required this.onTaggleFav});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onTaggleFav;  

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal, onTaggleFav: onTaggleFav)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh ok ... nothing here',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground)
            ),
            const SizedBox(height: 16,),
            Text(
              'Try selecting different category', 
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),
            )
          ],
        ),
      );
    
    if (meals.isNotEmpty) {
      content = ListView.builder(itemCount: meals.length, itemBuilder: (ctx, index) => 
        MealItem(
          meal: meals[index], 
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          }
        )
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }

}