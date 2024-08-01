import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/constants.dart';
import '../constants/text_style.dart';

class HistorySmsItem extends StatelessWidget {
  final String name;
  final String phone;
  final String time;
  final String image;

  const HistorySmsItem(
      {super.key,
      required this.name,
      required this.phone,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage("assets/images/$image.png"),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style:
                      CustomFonts.slussen14W800(color: HexColor(primaryColor)),
                ),
                Text(
                  phone,
                  style: CustomFonts.slussen10W500(
                      color: HexColor(primaryColor).withOpacity(0.6)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            HexColor("#E49356"),
                            HexColor("#E7CB87"),
                          ])),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "Time : $time",
                    style: CustomFonts.slussen9W700(color: HexColor("#FFFFFF")),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => {},
                child: CircleAvatar(
                    radius: 13,
                    backgroundColor: HexColor("#E957C9"),
                    child: Image.asset("assets/images/check-white.png",
                        width: 13, height: 13)),
              ),
              const SizedBox(height: 4),
              Text(
                "SMS Sent",
                style: CustomFonts.slussen8W700(color: HexColor("#E957C9")),
              )
            ],
          )
        ],
      ),
    );
  }
}
