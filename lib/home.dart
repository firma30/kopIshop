import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 50, 50, 50),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Bilzen, Tanjungbalai",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(255, 198, 124, 78),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(105, 106, 106, 106),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Stack(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search coffee",
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(148, 255, 255, 255),
                                  fontSize: 19,
                                ),
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('images/im8.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.red,
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Text(
                                  "Promo",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 3,
                              left: 15,
                              child: Container(
                                width: 250,
                                padding: const EdgeInsets.all(5),
                                child: const Text(
                                  "Buy one get one Free  ",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    backgroundColor: Colors.black,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    CustomColoredButton(text: "Cappuccino"),
                    SizedBox(width: 10),
                    CustomColoredButton(text: "Machiato"),
                    SizedBox(width: 10),
                    CustomColoredButton(text: "Latte"),
                    SizedBox(width: 10),
                    CustomColoredButton(text: "Americano"),
                  ],
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CoffeeItem(
                      imageAsset: 'images/kop1.png',
                      name: 'Capucinno',
                      description: 'with Chocolate',
                      price: '\$5.99',
                    ),
                    CoffeeItem(
                      imageAsset: 'images/kop2.png',
                      name: 'Machiato',
                      description: 'with Chocolate',
                      price: '\$5.99',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CoffeeItem(
                      imageAsset: 'images/kop1.png',
                      name: 'Capucinno',
                      description: 'with Chocolate',
                      price: '\$5.99',
                    ),
                    CoffeeItem(
                      imageAsset: 'images/kop2.png',
                      name: 'Machiato',
                      description: 'with Chocolate',
                      price: '\$5.99',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 30),
        activeColor: Color.fromARGB(255, 198, 124, 78),
        gap: 10,
        iconSize: 30,
        tabs: [
          GButton(
            icon: Icons.home,
          ),
          GButton(
            icon: Icons.favorite,
          ),
          GButton(
            icon: Icons.shopping_bag,
          ),
          GButton(
            icon: Icons.notifications,
          ),
        ],
      ),
    );
  }
}

class CustomColoredButton extends StatefulWidget {
  final String text;

  const CustomColoredButton({Key? key, required this.text}) : super(key: key);

  @override
  _CustomColoredButtonState createState() => _CustomColoredButtonState();
}

class _CustomColoredButtonState extends State<CustomColoredButton> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _isButtonPressed = !_isButtonPressed;
        });
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: _isButtonPressed
            ? const Color.fromARGB(255, 198, 124, 78)
            : const Color.fromARGB(255, 244, 242, 242),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
          color: _isButtonPressed
              ? const Color.fromARGB(255, 198, 124, 78)
              : const Color.fromARGB(0, 255, 255, 255),
        ),
        minimumSize: const Size(100, 45),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 15,
          color: _isButtonPressed ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class CoffeeItem extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String description;
  final String price;

  const CoffeeItem({
    Key? key,
    required this.imageAsset,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 230,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 239, 238),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
          image: AssetImage(imageAsset),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 145),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 175, 175, 175),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 198, 124, 78),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
