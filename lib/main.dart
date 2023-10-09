import 'package:dicoding_flutter/pages/home_page.dart';
import 'package:dicoding_flutter/pages/single_item_page.dart';
import 'package:dicoding_flutter/pages/single_item_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "singleItemPage": (context) => SingleItemPage(),
        "singleItemPage2": (context) => SingleItemPage2(),
      },
    );
  }
}
