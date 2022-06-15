import 'package:chacty_apps/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroupChat extends StatelessWidget {
  final String image;
  final String time;
  final String chat;
  final bool me;

  const GroupChat(
      {super.key,
      required this.image,
      required this.chat,
      required this.time,
      required this.me});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: me
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chat,
                        style: titleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        time,
                        style: subTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 14),
                Image.asset(
                  image,
                  width: 40,
                  height: 40,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 14),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xffEBEFF3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chat,
                        style: titleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        time,
                        style: subTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
