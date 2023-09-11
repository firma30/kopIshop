import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Espresso'),
            subtitle: Text('IDR 20,000'),
          ),
          ListTile(
            title: Text('Cappuccino'),
            subtitle: Text('IDR 25,000'),
          ),
        ],
      ),
    );
  }
}
