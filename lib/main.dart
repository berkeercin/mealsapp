import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/screens/categories.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(228, 84, 8, 237),
        brightness: Brightness.dark));

void main() {
  runApp(ProviderScope(
      child: MaterialApp(home: const Categories(), theme: theme)));
}
