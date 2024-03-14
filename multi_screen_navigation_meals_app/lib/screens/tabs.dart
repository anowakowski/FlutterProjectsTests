import 'package:flutter/material.dart';
import 'package:multi_screen_navigation_meals_app/models/meal.dart';

import 'package:multi_screen_navigation_meals_app/screens/categories.dart';
import 'package:multi_screen_navigation_meals_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends State<TabsScreen> {

  int _selectedPageIndex = 0;
  final List<Meal> _favMeals = [];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _toggleMealFavStatus(Meal meal) {
    final isExisting = _favMeals.contains(meal);

    if (isExisting) {
      _favMeals.remove(meal);
    } else {
      _favMeals.add(meal);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoiresScreen(onTaggleFav: _toggleMealFavStatus,);
    var activePageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(meals: _favMeals, onTaggleFav: _toggleMealFavStatus,);
      activePageTitle = 'Your favorities';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorities')          
        ],
      ),
    );
  }
}