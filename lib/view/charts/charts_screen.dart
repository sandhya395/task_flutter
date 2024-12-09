import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsScreen extends StatefulWidget {
  const ChartsScreen({Key? key}) : super(key: key);

  @override
  State<ChartsScreen> createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
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
          Container(
            height: 200,
            width: 300,
            child: BarChart(
              BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 1, barsSpace: 30, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 15, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 11, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 6, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(x: 7, barRods: [
                      BarChartRodData(
                          fromY: 0, toY: 10, width: 15, color: Colors.amber),
                    ]),
                    BarChartGroupData(
                      x: 8,
                      barRods: [
                        BarChartRodData(
                            fromY: 0, toY: 10, width: 15, color: Colors.amber),
                      ],
                    )
                  ],
                  barTouchData: BarTouchData(enabled: true),
                  extraLinesData: ExtraLinesData(extraLinesOnTop: true),
                  gridData: FlGridData(drawHorizontalLine: false)),
            ),
          ),
          Container(
            height: 200,
            width: 300,
            child: PieChart(PieChartData(
                sections: [
                  PieChartSectionData(value: 20, color: Colors.pink),
                  PieChartSectionData(value: 40, color: Colors.blue),
                  PieChartSectionData(value: 50, color: Colors.yellow),
                ],
                borderData:
                    FlBorderData(border: Border.all(color: Colors.black)),
              centerSpaceColor: Colors.brown,centerSpaceRadius: 0
            )),
          )
        ],
      ),
    );
  }
}
