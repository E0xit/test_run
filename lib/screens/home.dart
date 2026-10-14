import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_run/theme_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Text('Hello')),
          Positioned(
            child: ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().toggleTheme();
              },
              child: Text('Change Theme!'),
            ),
          ),
        ],
      ),
    );
  }
}
