import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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

  final List<AdaptiveScaffoldDestination> _menuItems = [
    const AdaptiveScaffoldDestination(
        title: 'Manajemen Produk', icon: Icons.shop),
    const AdaptiveScaffoldDestination(
        title: 'Manajemen Pesanan', icon: Icons.shopping_cart),
    const AdaptiveScaffoldDestination(
        title: 'Manajemen Pelanggan', icon: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      selectedIndex: _selectedIndex,
      destinations: _menuItems,
      appBar: AppBar(
        title: const Text('Dashboard - Coffee Shop Backend'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final List<String> _bulan = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'Mei',
      'Jun',
      'Jul',
      'Agu',
      'Sep',
      'Okt',
      'Nov',
      'Des',
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Statistik Penjualan',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            height: 400.0,
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 80, 229, 255),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: LineChartSample2(bulan: _bulan),
          ),
          const ListTile(
            title: Text('Menu Hari Ini'),
          ),
          const ListTile(
            title: Text('Kopi Espresso'),
            subtitle: Text('Harga: \$3.99'),
          ),
          const ListTile(
            title: Text('Latte'),
            subtitle: Text('Harga: \$4.99'),
          ),
          const ListTile(
            title: Text('Cappuccino'),
            subtitle: Text('Harga: \$4.49'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CoffeeShopMetric(title: 'Pendapatan', value: '\$1000'),
                CoffeeShopMetric(title: 'Pelanggan', value: '200'),
                CoffeeShopMetric(title: 'Pesanan', value: '300'),
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
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];
  List<double> _dataPenjualan = [
    3.0,
    3.5,
    4.0,
    3.8,
    4.2,
    3.9,
    4.5,
    4.3,
    3.7,
    4.1,
    4.0,
    3.8
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
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
        // SideTitles(
        //   showTitles: false,
        // ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),

        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, TitleMeta) {
              // Tampilkan label bulan sesuai dengan indeks
              if (value >= 0 && value < widget.bulan.length) {
                return Text(
                  widget.bulan[value.toInt()],
                  style: const TextStyle(fontSize: 12.0),
                );
              }
              return const Text('');
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: const Color(0xff37434d),
          width: 1,
        ),
      ),
      minX: 0,
      maxX: widget.bulan.length.toDouble() - 4,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: [
            for (int i = 0; i < widget.bulan.length; i++)
              FlSpot(i.toDouble(), _dataPenjualan[i]),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            stops: [0.0, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          barWidth: 5,
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
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
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
