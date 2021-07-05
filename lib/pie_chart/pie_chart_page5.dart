import 'package:flutter/material.dart';

class PieChartSample5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample5State();
}

class PieChartSample5State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Text('Toplam Kalori: 419')
          ],
        ),
      ),
    );
  }
}
