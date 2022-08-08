import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/providers/app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext action) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (_) => AppState()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignIn(),
      ),
    );
  }
}