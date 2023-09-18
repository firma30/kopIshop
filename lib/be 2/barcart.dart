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


                        // Flexible(
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20.0),
                        //     ),
                        //     child: const Padding(
                        //       padding: EdgeInsets.all(20.0),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceAround,
                        //             children: [
                        //               Icon(
                        //                 Icons.bar_chart_outlined,
                        //                 size: 60,
                        //               ),
                        //               Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   SizedBox(
                        //                     height: 20,
                        //                   ),
                        //                   Text(
                        //                     "Income",
                        //                     style: TextStyle(
                        //                       fontSize: 26,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   SizedBox(
                        //                     width: 10,
                        //                   ),
                        //                   Text(
                        //                     "\$ 10.000",
                        //                     style: TextStyle(
                        //                       fontSize: 36,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //           SizedBox(
                        //             height: 20,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                        // Flexible(
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20.0),
                        //     ),
                        //     child: const Padding(
                        //       padding: EdgeInsets.all(20.0),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceAround,
                        //             children: [
                        //               Icon(
                        //                 Icons.bar_chart_outlined,
                        //                 size: 60,
                        //               ),
                        //               Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   SizedBox(
                        //                     height: 20,
                        //                   ),
                        //                   Text(
                        //                     "Income",
                        //                     style: TextStyle(
                        //                       fontSize: 26,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   SizedBox(
                        //                     width: 10,
                        //                   ),
                        //                   Text(
                        //                     "\$ 10.000",
                        //                     style: TextStyle(
                        //                       fontSize: 36,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //           SizedBox(
                        //             height: 20,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                        // Flexible(
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20.0),
                        //     ),
                        //     child: const Padding(
                        //       padding: EdgeInsets.all(20.0),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceAround,
                        //             children: [
                        //               Icon(
                        //                 Icons.bar_chart_outlined,
                        //                 size: 60,
                        //               ),
                        //               Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   SizedBox(
                        //                     height: 20,
                        //                   ),
                        //                   Text(
                        //                     "Income",
                        //                     style: TextStyle(
                        //                       fontSize: 26,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   SizedBox(
                        //                     width: 10,
                        //                   ),
                        //                   Text(
                        //                     "\$ 10.000",
                        //                     style: TextStyle(
                        //                       fontSize: 36,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //           SizedBox(
                        //             height: 20,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),