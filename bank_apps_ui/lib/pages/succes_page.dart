import 'package:bank_apps_ui/thema.dart';
import 'package:flutter/material.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.apps,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: const [
                    Text(
                      "Complete",
                      style: TextStyle(
                        fontSize: 42,
                        color: blueColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                    Icon(
                      Icons.domain_verification_rounded,
                      size: 120,
                      color: bluelightColor,
                    ),
                    SizedBox(height: 15),
                    Text("\$ 45",
                        style: TextStyle(
                          fontSize: 42,
                          color: blueColor,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    const Text(
                      "Paid To :",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  color: bluelightColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                height: 60,
                                child: const Center(
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Albert",
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: blueColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "ablbert_turnet@mail.com",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "Transaction Id",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: blueColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "125478965325",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
