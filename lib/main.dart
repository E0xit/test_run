import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_run/theme_provider.dart';
import 'screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().isDarkMode;
    return MaterialApp(
      title: 'aadawfaw',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Home(),
    );
  }
}

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: ((context) => ThemeProvider()),
      child: const MyApp(),
    ),
  );
}
