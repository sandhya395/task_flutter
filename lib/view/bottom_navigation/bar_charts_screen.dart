import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartsScreen extends StatefulWidget {
  const BarChartsScreen({Key? key}) : super(key: key);

  @override
  State<BarChartsScreen> createState() => _BarChartsScreenState();
}

class _BarChartsScreenState extends State<BarChartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: LineChart(
            curve: Curves.slowMiddle,
            LineChartData(
                lineBarsData: [
                  LineChartBarData(
                      color: Colors.blue,
                      isCurved: true,
                      barWidth: 4,
                      curveSmoothness: 0,
                      gradient: const LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.purpleAccent,
                            Colors.lightBlueAccent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter
                      ),
                      //     showingIndicators: [
                      //   1,
                      //   3,
                      //   5
                      // ],
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 1),
                        FlSpot(3, 1),
                        FlSpot(3, 5),
                        FlSpot(4, 0),
                        FlSpot(4, 5),
                        FlSpot(5, 2),
                      ]
                    // lineChartStepData: LineChartStepData(stepDirection: 0.1)
                  ),
                  LineChartBarData(
                      color: Colors.blue,
                      isCurved: false,
                      barWidth: 4,
                      curveSmoothness: 0,
                      gradient: const LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.greenAccent,
                            Colors.lime,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter
                      ),
                      //     showingIndicators: [
                      //   1,
                      //   3,
                      //   5
                      // ],
                      spots: [
                        FlSpot(0, 0.9),
                        FlSpot(1, 1.9),
                        FlSpot(2, 1.9),
                        FlSpot(3, 5.9),
                        FlSpot(4, 0.9),
                        FlSpot(6, 5.9),
                        FlSpot(5, 2.9),
                      ]
                    // lineChartStepData: LineChartStepData(stepDirection: 0.1)
                  ),LineChartBarData(
                      color: Colors.blue,
                      isCurved: false,
                      barWidth: 4,
                      curveSmoothness: 0,
                      gradient: const LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.black,
                            Colors.blueGrey,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter
                      ),
                      //     showingIndicators: [
                      //   1,
                      //   3,
                      //   5
                      // ],
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(1, 1),
                        FlSpot(1, 3),
                        FlSpot(1, 4),
                        FlSpot(4, 0),
                        FlSpot(2, 4),
                        FlSpot(6, .9),
                      ]
                    // lineChartStepData: LineChartStepData(stepDirection: 0.1)
                  )
                ],
                backgroundColor: Colors.grey.shade100,
                baselineX: 10,
                borderData: FlBorderData(
                    border: Border.all(color: Colors.green), show: false),
                titlesData: FlTitlesData(
                    show: true,

                    bottomTitles: AxisTitles(
                        axisNameSize: 16,
                        axisNameWidget: Text("Name"),
                        drawBelowEverything: false,
                        sideTitles: SideTitles(showTitles: false)))

              // betweenBarsData: [
              //   BetweenBarsData(fromIndex: 1, toIndex: 3),
              //   // FlSpot(3, 1.9),
              //   // FlSpot(6, 5),
              //   // FlSpot(10, 3.3),
              //   // FlSpot(13, 4.5),
              // ],
              // spots: const [],
              // write your logic
            ),
          ),
        ),
      ),
    );
  }
}
