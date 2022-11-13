import 'package:flutter/material.dart';
import 'package:simple_snackbar/simple_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Snackbar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Snack bar Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Display Success Snack Bar"),
                onPressed: () {
                  final snackBar = simpleSnackBar(
                      //required
                      buildContext: context,
                      //required
                      messageText: "Success message",
                      backgroundColor: Colors.white,
                      displayDismiss: false,
                      textColor: Colors.black,
                      snackBarType: SnackBarType.success);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
              ElevatedButton(
                child: const Text("Display Error Snack Bar"),
                onPressed: () {
                  final snackBar = simpleSnackBar(
                      //required
                      buildContext: context,
                      //required
                      messageText: "This is an error",
                      backgroundColor: Colors.white,
                      displayDismiss: false,
                      textColor: Colors.black,
                      snackBarType: SnackBarType.error);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
              ElevatedButton(
                child: const Text("Display Warning Snack Bar"),
                onPressed: () {
                  final snackBar = simpleSnackBar(
                      //required
                      buildContext: context,
                      //required
                      messageText: "This is a warning",
                      backgroundColor: Colors.white,
                      displayDismiss: false,
                      textColor: Colors.black,
                      snackBarType: SnackBarType.warning);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
              ElevatedButton(
                child: const Text("Display Info Snack Bar"),
                onPressed: () {
                  final snackBar = simpleSnackBar(
                      //required
                      buildContext: context,
                      //required
                      messageText: "This is an info",
                      backgroundColor: Colors.white,
                      displayDismiss: false,
                      textColor: Colors.black,
                      snackBarType: SnackBarType.info);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
