import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/my_home_page.dart';
import 'my_app_state.dart';

void main() {
  runApp(const MyApp());
}

// The code [MyApp] sets up the whole app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
