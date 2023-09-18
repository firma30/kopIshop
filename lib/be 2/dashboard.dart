import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isExpand = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: isExpand,
            backgroundColor: Colors.deepPurple.shade400,
            unselectedIconTheme:
                const IconThemeData(color: Colors.white, opacity: 1),
            unselectedLabelTextStyle: const TextStyle(
              color: Colors.white,
            ),
            selectedIconTheme: IconThemeData(color: Colors.deepPurple.shade900),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bar_chart),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text("Home"),
              ),
            ],
            selectedIndex: 0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(150, 188, 188, 188)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://api.uifaces.co/our-content/donated/xZ4wg2Xj.jpg",
                              ),
                              radius: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Menambahkan horizontal scrolling
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bar_chart_outlined,
                                      size: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Income",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "\$ 10.000",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ...Widget-widget Card di sini
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
