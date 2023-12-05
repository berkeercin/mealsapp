import 'package:flutter/material.dart';
import 'package:mealsapp/data/dummy_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

class Meals extends StatefulWidget {
  const Meals({Key? key, required this.category}) : super(key: key);
  final Category category;
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  @override
  Widget build(BuildContext context) {
    List<Meal> meals = mealList
        .where((element) => element.categoryId == widget.category.id)
        .toList();
    Widget _widget = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => Text(meals[index].name));
    if (meals.isEmpty) {
      _widget = const Center(
        child: Text("Bu kategoride hiç bir tarif bulunamadı.."),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
      ),
      body: _widget,
    );
  }
}
