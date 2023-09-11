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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const Text(
                      "Detail",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Tindakan ketika tombol diklik
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 226,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('images/kop5.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Capucinno",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "with Chocolate",
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 137, 137, 137),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Color.fromARGB(255, 251, 189, 33),
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "(256)",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 137, 137, 137),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 240, 240),
                      borderRadius: BorderRadius.circular(10), // Border merah
                    ),
                    child: const Icon(
                      Icons.coffee,
                      color: Color.fromARGB(255, 198, 124, 78),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 240, 240),
                      borderRadius: BorderRadius.circular(10), // Border merah
                    ),
                    child: const Icon(
                      Icons.local_drink,
                      color: Color.fromARGB(255, 198, 124, 78),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromARGB(255, 234, 234, 234),
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              const SizedBox(height: 15),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 5),
              const Text(
                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 137, 137, 137),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Size",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 242, 242),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 220, 220, 220),
                        width: 1,
                      ),
                      minimumSize: const Size(100, 45),
                    ),
                    child: const Text(
                      "S",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 245, 238),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 198, 124, 78),
                        width: 1,
                      ),
                      minimumSize: const Size(100, 45),
                    ),
                    child: const Text(
                      "M",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 198, 124, 78)),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 242, 242),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 220, 220, 220),
                        width: 1,
                      ),
                      minimumSize: const Size(100, 45),
                    ),
                    child: const Text(
                      "L",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Color.fromARGB(255, 215, 215, 215),
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    child: const Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 137, 137, 137),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$ 5.99",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 198, 124, 78)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(230, 60)),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 255, 255)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 198, 124, 78)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Ubah nilai sesuai dengan radius yang diinginkan
                        ),
                      ),
                    ),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
