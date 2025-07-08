import 'package:flutter/material.dart';

class Yellowpage extends StatelessWidget {
  const Yellowpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Page"),
        backgroundColor: const Color.fromARGB(255, 209, 190, 15),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Yellow Page",style: Theme.of(context).textTheme.headlineMedium,),
          ],
        ),
      ),
    );
  }
}