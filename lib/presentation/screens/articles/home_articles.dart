import 'package:app_news2/config/constants/environment.dart';
import 'package:flutter/material.dart';

class HomeArticles extends StatelessWidget {
  static const name = 'home-articles';

  const HomeArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(Environment.theNewsDbKey)),
    );
  }
}
