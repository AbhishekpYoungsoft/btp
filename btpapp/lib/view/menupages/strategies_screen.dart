import 'package:btpapp/view/menupages/strategy_details/straddle_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme_color/pallete.dart';

class StrategyPage extends StatefulWidget {
  const StrategyPage({super.key});

  @override
  State<StrategyPage> createState() => _StrategyPageState();
}

class _StrategyPageState extends State<StrategyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Strategies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: null,
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Straddle,A straddle is a neutral options strategy that \n involves simultaneously buying both a put option \n and a call option for the underlying security with the \nsame strike price and the same expiration date.",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(StraddlePage());
                        },
                        child: const Text(
                          "more info",
                          style: TextStyle(color: Pallete.blueColor),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: null,
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  child: Text("Strangle"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: null,
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  child: Text("Combo"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[600],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
