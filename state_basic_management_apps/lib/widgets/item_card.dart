import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:state_basic_management_apps/thema.dart';

class ItemCard extends StatefulWidget {
  final int index;
  const ItemCard({super.key, required this.index});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 20),
      margin: EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: whiteColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            color: whiteColor,
            size: 30,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monthly",
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
              ),
              SizedBox(height: 4),
              Text(
                "Good for starting up",
                style: whiteTextStyle.copyWith(
                  fontWeight: light,
                  color: Colors.white54,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            "\$20",
            style: whiteTextStyle.copyWith(
              fontSize: 21,
              fontWeight: bold,
            ),
          )
        ],
      ),
    );
  }
}
