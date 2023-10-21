import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/main.screen.dart';
import 'package:providerapp/providers/mainscreen.provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
       ChangeNotifierProvider(create: (_) => MainScreenProvider())
     

        ],
        child: MaterialApp(
          title: 'My provider app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Mainscreen(),
        ));
  }
}
