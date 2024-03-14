import 'package:flutter/material.dart';

import 'package:multi_screen_navigation_meals_app/models/meal.dart';
import 'package:multi_screen_navigation_meals_app/screens/categories.dart';
import 'package:multi_screen_navigation_meals_app/screens/filters.dart';
import 'package:multi_screen_navigation_meals_app/screens/meals.dart';
import 'package:multi_screen_navigation_meals_app/widgets/main_drawer.dart';

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


  void _showInfoMessages(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message)
      )
    );
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _toggleMealFavStatus(Meal meal) {
    final isExisting = _favMeals.contains(meal);

    setState(() {
      if (isExisting) {
        _favMeals.remove(meal);
        _showInfoMessages('meal is no longer a favorite.');
      } else {
        _favMeals.add(meal);
        _showInfoMessages('mark as a favorite.');
      }
    });
  }

  void _setScreen(String identifier) {
    if (identifier == 'filters') {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const FiltersScreen()));
    } else {
      Navigator.of(context).pop(); //close the Drower
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
      drawer: MainDrawer(onSelectScreen: _setScreen),
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