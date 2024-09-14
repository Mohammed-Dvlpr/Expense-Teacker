import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class VisaCardDesign extends StatefulWidget {
  const VisaCardDesign({super.key});

  @override
  State<VisaCardDesign> createState() => _VisaCardDesignState();
}

class _VisaCardDesignState extends State<VisaCardDesign> {
  TextStyle cardTextStyle = TextStyle(fontSize: 10, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              colors: [Colors.purple, Colors.pink],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: RotatedBox(
        quarterTurns: 3,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mohammed Hussain",
                style: cardTextStyle,
              ),
              Stack(children: [
                Row(
                  children: [
                    Text(
                      "**** **** ****",
                      style: cardTextStyle.copyWith(
                          fontSize: 18, letterSpacing: 1),
                    ),
                    Text(
                      " 2204",
                      style: cardTextStyle.copyWith(
                          fontSize: 18, letterSpacing: 1),
                    ),
                  ],
                ),
                Positioned(
                    top: 15,
                    child: Text(
                      "07/25",
                      style: cardTextStyle.copyWith(
                          fontSize: 10, color: Colors.white54),
                    ))
              ]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(fontSize: 12, color: Colors.white54),
                      ),
                      Text(
                        " \$ 5,750.00",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    "VISA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
