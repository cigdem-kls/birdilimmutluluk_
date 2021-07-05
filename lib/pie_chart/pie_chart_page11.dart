import 'package:flutter/material.dart';

class PieChartSample11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample11State();
}

class PieChartSample11State extends State {
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
            Text('Toplam Kalori: 401')
          ],
        ),
      ),
    );
  }
}
