import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;
  FavouritesScreen(this.favouriteMeals);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no Favourites'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: widget.favouriteMeals[index].id,
            title: widget.favouriteMeals[index].title,
            imageUrl: widget.favouriteMeals[index].imageUrl,
            duration: widget.favouriteMeals[index].duration,
            complexity: widget.favouriteMeals[index].complexity,
            affordability: widget.favouriteMeals[index].affordability,
          );
        },
        itemCount: widget.favouriteMeals.length,
      );
    }
  }
}
