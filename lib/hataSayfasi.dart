import 'package:flutter/material.dart';

class Hatasayfasi extends StatelessWidget {
  const Hatasayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("404 Not Found Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Aranan Sayfa Bulunamadı",style: Theme.of(context).textTheme.headlineMedium,)
          ],
          
        ),
      ),
    );
  }
}