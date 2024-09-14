import 'package:flutter/material.dart';

class ExpenseIncomeData extends StatefulWidget {
  const ExpenseIncomeData({super.key});

  @override
  State<ExpenseIncomeData> createState() => _ExpenseIncomeDataState();
}

class _ExpenseIncomeDataState extends State<ExpenseIncomeData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        children: [
          expenceInconeContainer(context, Icons.arrow_upward, "Expenes",
              4100.00, Colors.pink, Colors.white),
          const SizedBox(
            height: 10,
          ),
          expenceInconeContainer(context, Icons.arrow_downward, "Income",
              2100.00, Colors.white, Colors.pink)
        ],
      ),
    );
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
