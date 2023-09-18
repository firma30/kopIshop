import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman Home Page',
              style: TextStyle(fontSize: 24),
            ),
            // Tambahkan konten grafik atau data chart di sini
          ],
        ),
      ),
    );
  }
}
