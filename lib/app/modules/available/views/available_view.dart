import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/available_controller.dart';

class AvailableView extends GetView<AvailableController> {
  const AvailableView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(padding: EdgeInsets.all(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                child: Image.asset("images/1.jpg"),
              ),
              Icon(
                Icons.sort,
                size: 40,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Get your delicious food on time',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('search your food here')
                  ],
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.filter_alt_off_sharp,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Items Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(),
                  child: Text('all'),
                ),
                Container(
                  child: Text('Pizza'),
                ),
                Container(
                  child: Text('Pasta'),
                ),
                Container(
                  child: Text('burger'),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
