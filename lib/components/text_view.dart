import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget textView(BuildContext context, String text) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 52 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textTheme.displayMedium,
          ),
        ],
      ),
    ),
  );
}
