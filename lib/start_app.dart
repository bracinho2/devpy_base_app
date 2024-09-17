import 'package:flutter/material.dart';

import 'flavors/flavors.dart';

void startApp() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Flavor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Base URL: ${Flavor.apiBaseUrl}"),
              Text("Flavor: ${Flavor.flavorType}"),
            ],
          ),
        ),
      ),
    );
  }
}
