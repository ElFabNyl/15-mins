import 'package:flutter/material.dart';
import 'package:retraite/views/home/bar%20graph/annual_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      child: Column(
        children: [
         const  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("How Good is your prayer life in", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              Text(
                "2024",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
              )
            ],
          ),
          Center(
              child: SizedBox(
                  child: SfCartesianChart(
                      primaryXAxis: const CategoryAxis(),
                      enableMultiSelection: true,
                      enableAxisAnimation: true,
                      series: <LineSeries<AnnualData, String>>[
                LineSeries<AnnualData, String>(
                    // Bind data source
                    dataSource: <AnnualData>[
                      AnnualData('Jan', 10),
                      AnnualData('Feb', 20),
                      AnnualData('Mar', 10),
                      AnnualData('Apr', 32),
                      AnnualData('May', 40),
                      AnnualData('Jun', 50),
                      AnnualData('Ju', 5),
                      AnnualData('Aug', 20),
                      AnnualData('Sept', 5),
                      AnnualData('Oct', 50),
                      AnnualData('Nov', 30),
                      AnnualData('Dec', 10),
                    ],
                    xValueMapper: (AnnualData volume, _) => volume.year,
                    yValueMapper: (AnnualData volume, _) => volume.prayerVolume)
              ])))
        ],
      ),
    );
  }
}
