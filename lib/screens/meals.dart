import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/meals_provider.dart';
import 'package:mealsapp/widgets/meal_card.dart';

class Meals extends ConsumerWidget {
  const Meals({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Meal> mealsfromState = ref.watch(mealsProvider);
    // List<Meal> meals =
    //     mealList.where((element) => element.categoryId == category.id).toList();

    List<Meal> mealsList = mealsfromState
        .where((element) => element.categoryId == category.id)
        .toList();
    Widget widget = ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mealsList.length,
        itemBuilder: (ctx, index) => MealCard(meal: mealsList[index]));
    if (mealsList.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride hiç bir tarif bulunamadı.."),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: widget,
    );
  }
}
