import 'package:flutter/material.dart';

class ExpenseIncomeData extends StatefulWidget {
  const ExpenseIncomeData({super.key});

  @override
  State<ExpenseIncomeData> createState() => _ExpenseIncomeDataState();
}

// income and expense design
class _ExpenseIncomeDataState extends State<ExpenseIncomeData> {
  final List itemList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  String selectedValue = "August";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 240,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  expenceInconeContainer(context, Icons.arrow_upward, "Expenes",
                      4100.00, Colors.pink, Colors.white),
                  const SizedBox(
                    height: 10,
                  ),
                  expenceInconeContainer(context, Icons.arrow_downward,
                      "Income", 2100.00, Colors.white, Colors.pink),
                ],
              ),
              SizedBox(
                width: 150,
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dwm(
                          "Day",
                        ),
                        dwm("Week"),
                        dwm("Month", colors: Colors.pink)
                      ]),
                  const SizedBox(height: 10),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 28,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: selectedValue,
                          dropdownColor: Colors.black,
                          items:
                              itemList.map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

// days week and month design
  Widget dwm(String text, {Color? colors}) {
    return Text(text, style: TextStyle(color: colors, fontSize: 15));
  }

  Widget expenceInconeContainer(BuildContext context, IconData icon,
      String text, double price, Color color, Color textColor) {
    return Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: textColor,
                )),
            Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "\$${price}",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));
  }
}
