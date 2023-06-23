import 'package:flutter/material.dart';
import 'package:learn_provider/views/screens/detail_screen.dart';
import 'package:learn_provider/views/screens/overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorDark: Colors.amber,
        primarySwatch: Colors.indigo,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
      },
    );
  }
}
