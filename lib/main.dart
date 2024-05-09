import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'components/show_true_or_false.dart';
import 'firebase_options.dart';
import '../components/selected_len.dart'; // Import your SelectedLen class
import 'package:portifolio/screens/inicial_screen.dart'; // Import your InitialScreen widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectedLen()),
        ChangeNotifierProvider(create: (_) => ShowTrueorFalse()),
        // Provide SelectedLen
        // Add other providers if needed
      ],
      child: MaterialApp(
        title: 'Breno Lima',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const InitialScreen(),
      ),
    );
  }
}
