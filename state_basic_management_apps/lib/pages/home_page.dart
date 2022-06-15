import 'package:flutter/material.dart';
import 'package:state_basic_management_apps/thema.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueDarkColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    "assets/img/panah.png",
                    width: 350,
                    height: 315,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upgrade to",
                          style: whiteTextStyle.copyWith(
                            fontSize: 28,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Pro",
                          style: blueTextStyle.copyWith(
                            fontSize: 28,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Go unclock off features and\nbuild your own business bigger",
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(
                        color: Colors.white38,
                        height: 1.5,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: const [
                    CardItems(
                      name: "Monthly",
                      desc: "Good for starting up",
                      biaya: "\$20",
                    ),
                    CardItems(
                      name: "Quarterly",
                      desc: "Focusing on building",
                      biaya: "\$55",
                    ),
                    CardItems(
                      name: "Yearly",
                      desc: "Steady company",
                      biaya: "\$220",
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class CardItems extends StatelessWidget {
  final String name;
  final String desc;
  final String biaya;
  const CardItems({
    Key? key,
    required this.name,
    required this.desc,
    required this.biaya,
  }) : super(key: key);

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
                name,
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
              ),
              SizedBox(height: 4),
              Text(
                desc,
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
            biaya,
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
