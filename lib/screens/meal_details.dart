import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key? key, required this.meal}) : super(key: key);
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
    );
  }
}
