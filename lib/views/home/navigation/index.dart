import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:retraite/views/home/bar%20graph/bar_data.dart';

import '../../../controllers/weekStatsCtrl.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WeeklyStatisticsController weekCtrl = Get.find();

    BarData myBarData = BarData(
        sunAmount: weekCtrl.weeklyPrayerStas[0],
        monAmount: weekCtrl.weeklyPrayerStas[1],
        tuesAmount: weekCtrl.weeklyPrayerStas[2],
        wedAmount: weekCtrl.weeklyPrayerStas[3],
        thursAmount: weekCtrl.weeklyPrayerStas[4],
        friAmount: weekCtrl.weeklyPrayerStas[5],
        satAmount: weekCtrl.weeklyPrayerStas[6]);
    myBarData.initializeBarData();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Color.fromARGB(255, 58, 25, 64),
                  child: Text(
                    "NF",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Text(
                      "Nyl Fabrice",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ]),
              const SizedBox(height: 30.0),
              const Text(
                "Weekly Statistics",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 300,
                width: 400,
                child: BarChart(
                  BarChartData(
                    maxY: 90,
                    minY: 0,
                    gridData: const FlGridData(show: false),
                    borderData:  FlBorderData(show: false),
                    titlesData:   FlTitlesData(
                      show: true,
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,  getTitlesWidget: getBottomTitles))

                    ),
                    barGroups: myBarData.barData
                        .map((data) => BarChartGroupData(x: data.x, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: Colors.grey[800],
                                  width: 15,
                                  borderRadius: BorderRadius.circular(2),
                                  backDrawRodData: BackgroundBarChartRodData(
                                    show: true,
                                    toY: 90,
                                    color: Colors.grey[100]

                                  )
                                  )
                            ]))
                        .toList(),
                  ),
                  swapAnimationDuration: const Duration(seconds: 2),
                  swapAnimationCurve: Curves.linear,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta){
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14
    );
  
  Widget text;
  switch(value.toInt()){
    case 0 :
      text = const Text("S", style: style);
      break;
    case 1 :
      text = const Text("M", style: style);
      break;
    case 2 :
      text = const Text("T", style: style);
      break;
    case 3 :
      text = const Text("W", style: style);
      break;
    case 4 :
      text = const Text("T", style: style);
      break;
    case 5 :
      text = const Text("F", style: style);
      break;
    case 6 :
      text = const Text("S", style: style);
      break;
    default:
      text = const Text("", style: style);
      break;

   }
   return SideTitleWidget(child: text, axisSide: meta.axisSide);
  }
 
}
