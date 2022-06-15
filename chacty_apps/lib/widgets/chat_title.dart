import 'package:chacty_apps/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatTitle extends StatelessWidget {
  final String? image;
  final String? name;
  final String? chat;
  final String? day;
  final bool dibaca;

  const ChatTitle(
      {super.key,
      this.image,
      this.name,
      this.chat,
      this.day,
      required this.dibaca});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            image.toString(),
            width: 56,
            height: 56,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.toString(),
                style: titleTextStyle,
              ),
              Text(
                chat.toString(),
                style: dibaca
                    ? subTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            day.toString(),
            style: subTextStyle,
          )
        ],
      ),
    );
  }
}
