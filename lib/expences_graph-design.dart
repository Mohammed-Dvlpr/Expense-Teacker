import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpencesGraphDesign extends StatefulWidget {
  const ExpencesGraphDesign({super.key});

  @override
  State<ExpencesGraphDesign> createState() => _ExpencesGraphDesignState();
}

class _ExpencesGraphDesignState extends State<ExpencesGraphDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: LineChart(
          LineChartData(
            maxX: 10,
            maxY: 10,
            minY: 0,
            minX: 0,
            backgroundColor: Colors.black,
            lineBarsData: [
              LineChartBarData(
                  spots: const [
                    FlSpot(0, 2),
                    FlSpot(1, 4),
                    FlSpot(2, 6),
                    FlSpot(3, 6),
                    FlSpot(4, 4),
                    FlSpot(5, 10),
                    FlSpot(6, 10),
                    FlSpot(7, 6),
                    FlSpot(8, 8),
                    FlSpot(9, 2),
                    FlSpot(10, 8),
                  ],
                  isCurved: true,
                  gradient: const LinearGradient(colors: [
                    Colors.purple,
                    Colors.pink,
                  ]),
                  barWidth: 3,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(colors: [
                      Colors.purple.withOpacity(0.2),
                      Colors.pink.withOpacity(0.2),
                    ]),
                  ),
                  dotData: const FlDotData(show: false)),
            ],
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: false,
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: Colors.grey.shade800,
                  strokeWidth: 0.8,
                );
              },
            ),
            titlesData: FlTitlesData(
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 12,
                    getTitlesWidget: (value, meta) {
                      String text = "";
                      switch (value.toInt()) {
                        case 1:
                          text = "1";
                          break;
                        case 2:
                          text = "2";
                          break;
                        case 3:
                          text = "3";
                          break;
                        case 4:
                          text = "4";
                          break;
                        case 5:
                          text = "5";
                          break;
                        case 6:
                          text = "6";
                          break;
                        case 7:
                          text = "7";
                          break;
                        case 8:
                          text = "8";
                          break;
                        case 9:
                          text = "9";
                          break;
                        case 10:
                          text = "10";
                          break;
                        default:
                          return Container();
                      }
                      return Text(
                        text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      );
                    }),
              ),
            ),
          ),
        ));
  }
}
