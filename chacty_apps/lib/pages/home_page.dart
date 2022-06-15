import 'package:chacty_apps/thema.dart';
import 'package:chacty_apps/widgets/chat_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    "assets/img/profile.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: const [
                    Text(
                      "Sabrina Carpenter",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Travel Freelancer",
                      style: TextStyle(
                        color: cyanColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Freinds",
                            style: titleTextStyle,
                          ),
                          const ChatTitle(
                            image: "assets/img/freinds_satu.png",
                            name: "Joshuer",
                            chat: "Sorry, you’re not my ty...",
                            day: "Now",
                            dibaca: true,
                          ),
                          const ChatTitle(
                            image: "assets/img/freinds_dua.png",
                            name: "Gabriella",
                            chat: "I saw it clearly and mig...",
                            day: "2:30",
                            dibaca: false,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Groups",
                            style: titleTextStyle,
                          ),
                          const ChatTitle(
                            image: "assets/img/group_satu.png",
                            name: "Jakarta Fair",
                            chat: "Love them",
                            day: "11:11",
                            dibaca: true,
                          ),
                          const ChatTitle(
                            image: "assets/img/group_dua.png",
                            name: "Angga",
                            chat: "Here here we can go...",
                            day: "7:11",
                            dibaca: false,
                          ),
                          const ChatTitle(
                            image: "assets/img/group_tiga.png",
                            name: "Bentley",
                            chat: "The car which does not...",
                            day: "7:11",
                            dibaca: false,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
