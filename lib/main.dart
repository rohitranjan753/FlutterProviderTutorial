import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/count_example.dart';
import 'package:providertutorial/count_provider.dart';
import 'package:providertutorial/favourite_screen.dart';
import 'package:providertutorial/slider_provider.dart';
import 'package:providertutorial/slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
      return CountProvider();
    },),
        ChangeNotifierProvider(create: (BuildContext context) {
      return SliderProvider();
    },),
      ],

      // create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: FavouriteScreen(),
      ),
    );
  }
}
