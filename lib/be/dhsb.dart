import 'package:flutter/material.dart';

void main() {
  runApp(CoffeeShopAdminApp());
}

class CoffeeShopAdminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoffeeShopAdminDashboard(),
    );
  }
}

class CoffeeShopAdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Admin Coffee Shop'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Dashboard Admin Coffee Shop',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Manajemen Menu'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Pemesanan dan Transaksi'),
            ),
          ],
        ),
      ),
    );
  }
}
