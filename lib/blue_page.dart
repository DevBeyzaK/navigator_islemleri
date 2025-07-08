import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  final String ad;
  const BluePage({super.key, required this.ad});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blue Page"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Blue Page",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),
            Text("Benim adım: $ad",style: Theme.of(context).textTheme.headlineMedium,),
          ],
        ),
      ),
    );
  }
}
