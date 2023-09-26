import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget cardView(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Stack(
    children: [
      Container(
        height: size.height * 159 / kHeightScreen,
        width: size.width * .42,
        decoration: BoxDecoration(
            color: Colors.purple.shade200,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0,
                blurRadius: 9,
                offset: const Offset(0, 4),
              )
            ]),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          height: size.height * 155 / kHeightScreen,
          width: size.width * .42,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$29999', style: textTheme.headlineMedium),
                Text(
                  'name',
                  style: textTheme.headlineSmall,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20.w,
                      width: 57.w,
                      color: Colors.green,
                    ),
                    Container(
                      height: 32.w,
                      width: 32.w,
                      color: Colors.yellow,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
