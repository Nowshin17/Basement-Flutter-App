import 'package:basement_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dashboard_screen.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.generateRoute,
      theme: ThemeData(
        cardTheme: const CardTheme(elevation: 2),
      ),
      home: const DashBoardScreen(),
    );
  }
}
