import 'package:chacty_apps/thema.dart';
import 'package:chacty_apps/widgets/group_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatingPage extends StatelessWidget {
  const ChatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greylightColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        // media querty kiri 30 kanan 30 total layar 100
        width: MediaQuery.of(context).size.width - (2 * 30), 
        child: Row(
          children: [
            Text(
              "Type message ...",
              style: subTextStyle.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Image.asset(
              "assets/img/btn_send.png",
              width: 35,
              height: 35,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: whiteColor,
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/img/group_satu.png",
                      width: 56,
                      height: 56,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jakarta Fair",
                          style: titleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          "14,209 members",
                          style: subTextStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/img/btn_whatsapp.png",
                      width: 56,
                      height: 56,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const [
                    GroupChat(
                      me: false,
                      image: "assets/img/freinds_satu.png",
                      chat: "How are ya guys?",
                      time: "2:30",
                    ),
                    GroupChat(
                      me: false,
                      image: "assets/img/freinds_tiga.png",
                      chat: "Fine here",
                      time: "3:11",
                    ),
                    GroupChat(
                      me: true,
                      image: "assets/img/me.png",
                      chat:
                          "Thinking about how to deal\nwith this client from hell...",
                      time: "22:08",
                    ),
                    GroupChat(
                      me: false,
                      image: "assets/img/freinds_dua.png",
                      chat: "Love them",
                      time: "23:11",
                    ),
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
