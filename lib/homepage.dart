import 'package:expense_tracker_ui/circle_progess_chart.dart';
import 'package:expense_tracker_ui/expences_graph-design.dart';
import 'package:expense_tracker_ui/expense_income_data.dart';
import 'package:expense_tracker_ui/visa_card_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "History",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900, shape: BoxShape.circle),
                    child: Icon(Icons.more_vert,
                        color: Colors.grey.shade500, size: 18))
              ],
            ),
            const Row(
              children: [
                VisaCardDesign(),
                ExpenseIncomeData(),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: SizedBox(
                height: 360,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Analytics",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const ExpencesGraphDesign(),
                      const CircleProgessChart(),
                      // rounding bottomnavigation bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.pink.withOpacity(0.6))),
                          child: BottomNavigationBar(
                              showSelectedLabels: false,
                              items: [
                                BottomNavigationBarItem(
                                    backgroundColor: Colors.grey.shade900,
                                    icon: const Icon(
                                      Icons.bar_chart,
                                      color: Colors.grey,
                                    ),
                                    label: ""),
                                BottomNavigationBarItem(
                                    backgroundColor: Colors.grey.shade900,
                                    icon: const Icon(
                                      Icons.add_card,
                                      color: Colors.grey,
                                    ),
                                    label: ""),
                                BottomNavigationBarItem(
                                    backgroundColor: Colors.grey.shade900,
                                    icon: const Icon(
                                      Icons.notifications,
                                      color: Colors.grey,
                                    ),
                                    label: ""),
                                BottomNavigationBarItem(
                                    backgroundColor: Colors.grey.shade900,
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Colors.grey,
                                    ),
                                    label: ""),
                              ]),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
