import 'package:flutter/material.dart';
import 'package:ostello/theme.dart';
import 'package:ostello/views/search_screen/search_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Ostello', theme: appThemeData, home: const SearchScreen());
}
