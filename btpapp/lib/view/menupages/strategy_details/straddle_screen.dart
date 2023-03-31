import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme_color/pallete.dart';

class StraddlePage extends StatefulWidget {
  const StraddlePage({super.key});

  @override
  State<StraddlePage> createState() => _StraddlePageState();
}

class _StraddlePageState extends State<StraddlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Straddle")),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/straddle.png'),
              Text(
                "The Short Straddle",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Text(
                    "A short straddle is an options strategy comprised of selling both a call option and a put option with the same strike price and expiration date. It is used when the trader believes the underlying asset will not move significantly higher or lower over the lives of the options contracts. The maximum profit is the amount of premium collected by writing the options. The potential loss can be unlimited, so it is typically a strategy for more advanced traders.",
                    style: TextStyle(fontSize: 16.sp),
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Example:",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/ss.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "The entire game of Short Straddle is based on prediction and determining the possible range of expected trading price of a stock on indices. To predict the range of trading price, one can simply add or subtract the price of the Call or Put option to/from the asset.For example, if Vodafone-Idea is trading at Rs. 10 and the premium is Rs. 1, the same can be added to the asset to determine the range. Here, the upside is Rs. 11, while the downside is Rs. 9.If the asset trades between these two ranges, the trader would lose some capital if they apply the Short Straddle strategy. However, if the price moves outside this particular range, say it hits the upper side of Rs. 12 or the lower side of Rs. 8, it allows the trader to make a good profit by overpowering the costs for both Options contracts.",
                    style: TextStyle(fontSize: 16.sp),
                    overflow: TextOverflow.clip,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100.w,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          "Subscribe",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Pallete.buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),

              // SizedBox(
              //   height: 10.h,
              // ),
            ],
          ),
        );
      }),
    );
  }
}
