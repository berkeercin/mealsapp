import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

const categoryList = {
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.red),
  Category(id: "3", name: "Ana Yemekler", color: Colors.blueGrey),
  Category(id: "4", name: "Tatlılar"),
};

const mealList = {
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl:
          "https://i.lezzet.com.tr/images-xxlarge-recipe/domatesli-mercimek-corbasi-4193b719-eb6c-4d84-ac5a-0950329023d6.jpg",
      ingradients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Baklava",
      imageUrl:
          "https://gulumoglubaklava.com.tr/wp-content/uploads/292c2709-1626-4278-8589-fd456ae44468.jpg",
      ingradients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
};
