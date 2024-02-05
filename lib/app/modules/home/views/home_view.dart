// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:food/app/modules/available/views/available_view.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Delivering',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Deliciousness right',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'To your',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 67,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Colors.green.shade400),
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          'door!',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 4,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 20,
                      height: 4,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 20,
                      height: 4,
                      color: Colors.green.shade400,
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => AvailableView());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade400,
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle),
                    width: 230,
                    height: 50,
                    child: Align(
                        child: Text(
                      'Start Ordering',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
          Lottie.asset('images/1.json')
        ],
      )),
    );
  }
}
