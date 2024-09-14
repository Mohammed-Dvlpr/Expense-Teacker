import 'package:expense_tracker_ui/models/percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleProgessChart extends StatefulWidget {
  const CircleProgessChart({super.key});

  @override
  State<CircleProgessChart> createState() => _CircleProgessChartState();
}

class _CircleProgessChartState extends State<CircleProgessChart> {
  final List<Percentage> percentage = Percentage.percentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: percentage.length,
          itemBuilder: (context, index) {
            final percentList = percentage[index];
            return Container(
              margin: const EdgeInsets.only(right: 10.0),
              width: 85,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const SizedBox(height: 6),
                  CircularPercentIndicator(
                    radius: 25,
                    lineWidth: 5,
                    // percent: 0.8,
                    percent: percentList.percent / 100,
                    backgroundColor: Colors.pink.shade200,
                    progressColor: Colors.purple,
                    backgroundWidth: 1,
                    center: Text(
                      "${percentList.percent}%",
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    percentList.categories,
                    style: const TextStyle(fontSize: 11, color: Colors.white),
                  ),
                  Text(
                    "\$${percentList.price}",
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
