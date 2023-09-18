import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'ManajemenPesananPage.dart';

void main() {
  runApp(BackendDashboardApp());
}

class BackendDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Backend Dashboard',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // Daftar menu pada Adaptive Navigation
  static const List<AdaptiveScaffoldDestination> _menuItems = [
    AdaptiveScaffoldDestination(
      title: 'Manajemen Produk',
      icon: Icons.shop,
    ),
    AdaptiveScaffoldDestination(
      title: 'Manajemen Pesanan',
      icon: Icons.shopping_cart,
    ),
    AdaptiveScaffoldDestination(
      title: 'Manajemen Pelanggan',
      icon: Icons.person,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      selectedIndex: _selectedIndex,
      destinations: _menuItems,
      onDestinationSelected: (int index) {
        // Handle navigation to specific pages based on index
        if (index == 0) {
        } else if (index == 1) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ManajemenPesananPage(),
          ));
        }
        setState(() {
          _selectedIndex = index;
        });
      },
      appBar: AppBar(
        title: const Text('Dashboard - Coffee Shop Backend'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final List<String> _bulan = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu',
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Judul Statistik Penjualan
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Statistik Penjualan',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),

          // Grafik Penjualan
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                height: 500.0,
                child: LineChartSample2(bulan: _bulan),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                size: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "\$ 10.000",
                            style: TextStyle(
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money_off,
                                size: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Pengeluaran",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "\$ 1.000",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                size: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Modal",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "\$ 4.000",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                size: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Hasil",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "\$ 5.000",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeeShopMetric extends StatelessWidget {
  final String title;
  final String value;

  const CoffeeShopMetric({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 24.0),
        ),
      ],
    );
  }
}

class LineChartSample2 extends StatefulWidget {
  final List<String> bulan;

  const LineChartSample2({Key? key, required this.bulan}) : super(key: key);

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  // Warna untuk grafik
  static const List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  // Data penjualan
  late final List<double> _dataPenjualan = [
    1.0,
    1.5,
    2.0,
    1.8,
    2.2,
    2.9,
    3.5,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.5,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 25,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
        ),

        // Tombol untuk mengganti tampilan rata-rata
        SizedBox(
          width: 60,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 12,
                color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, TitleMeta) {
              if (value >= 0 && value < widget.bulan.length) {
                return Text(
                  widget.bulan[value.toInt()],
                  style: const TextStyle(fontSize: 10.0),
                );
              }
              return Text('aksjdie');
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(
          color: const Color(0xff37434d),
          width: 2,
        ),
      ),
      minX: 0,
      maxX: widget.bulan.length.toDouble() - 1,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: [
            for (int i = 0; i < widget.bulan.length; i++)
              FlSpot(i.toDouble(), _dataPenjualan[i]),
          ],
          isCurved: true,
          gradient: const LinearGradient(
            colors: gradientColors,
            stops: [0.0, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              stops: [0.0, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: const Color(0xff37434d),
          width: 4,
        ),
      ),
      minX: 0,
      maxX: widget.bulan.length.toDouble() - 1,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: [
            for (int i = 0; i < widget.bulan.length; i++)
              FlSpot(i.toDouble(), 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            stops: [0.0, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!,
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!,
              ],
              stops: [0.0, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }
}

class AppColors {
  static const Color contentColorCyan = Color(0xFF50E4FF);
  static const Color contentColorBlue = Color(0xFF2196F3);
}
