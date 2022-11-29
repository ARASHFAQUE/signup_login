import 'package:flutter/material.dart';
import 'components/background.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Hello Messi The GOAT", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        )
      ),
    );
  }
}
