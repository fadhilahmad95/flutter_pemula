import 'package:bank_apps_ui/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Nick Julian",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Current Balance",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "\$ 1,245",
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        width: 280,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            IconsMenu(
                              image: "assets/img/icon_menu_satu.png",
                              width: 18,
                              name: "Pay",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_dua.png",
                              width: 18,
                              name: "Receive",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_tiga.png",
                              width: 18,
                              name: "Bills",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_empat.png",
                              width: 24,
                              name: "Transaction",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            IconsMenu(
                              image: "assets/img/icon_menu_lima.png",
                              width: 26,
                              name: "Loans",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_enam.png",
                              width: 43,
                              name: "Credit\nCard",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_tujuh.png",
                              width: 40,
                              name: "Mutual\nFunds",
                            ),
                            IconsMenu(
                              image: "assets/img/icon_menu_delapan.png",
                              width: 30,
                              name: "Fixed\nDeposits",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Recent Transcation",
                    style: TextStyle(
                      fontSize: 24,
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: [
                      RecentCard(),
                      RecentCard(),
                      RecentCard(),
                      RecentCard(),
                      RecentCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecentCard extends StatelessWidget {
  const RecentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 35,
        right: 35,
        top: 20,
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            color: bluelightColor,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Cash Withdrawal"), Text("10.30 23 Aug")],
          ),
          Spacer(),
          Text("\$ 304")
        ],
      ),
    );
  }
}

class IconsMenu extends StatelessWidget {
  final String image;
  final double width;
  final String name;
  const IconsMenu({
    Key? key,
    required this.image,
    required this.width,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              primary: blueColor,
              padding: EdgeInsets.all(12),
            ),
            onPressed: () {},
            child: Image.asset(
              image,
              width: width,
            ),
          ),
          SizedBox(height: 6),
          Text(
            name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
