import 'package:flutter/material.dart';
import 'package:kedai_kopi/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.black,
            ),
            Image.asset(
              'images/image3.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 500),
                  Container(
                    width: 330,
                    child: const Text(
                      "Coffee so good, your taste buds will love it.",
                      style: TextStyle(
                          fontSize: 42,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 290,
                    child: const Text(
                      "The best grain, the finest roast, the powerful flavor.",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 205, 195, 195),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 340,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeApp();
                        }));
                      },
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(40, 50)),
                        foregroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 114, 96, 96)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Builder(
                        builder: (context) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Image.asset(
                                'images/gglo.png',
                                alignment: Alignment.center,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Flexible(
                              child: Text(
                                "Sign with google",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
