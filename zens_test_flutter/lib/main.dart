// ignore_for_file: await_only_futures

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utilities/theme_util.dart';
import 'view_models/joke_view_model.dart';
import 'services/joke_service.dart';
import 'views/joke_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Delete data in SharedPreferences for testing.
  SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => JokeViewModel(JokeService()),
      child: MaterialApp(
        title: 'Jokee App',
        debugShowCheckedModeBanner: false,
        theme: ThemeUtil.defaultTheme,
        home: JokeScreen(),
      ),
    );
  }
}
