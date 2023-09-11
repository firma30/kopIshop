import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const DetailApp());
}

class DetailApp extends StatelessWidget {
  const DetailApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // ignore: sized_box_for_whitespace
              Container(
                width: double.infinity,
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Tindakan ketika tombol diklik
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    const Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
