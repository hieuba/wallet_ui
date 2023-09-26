import 'package:flutter/material.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget mainButton(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 52 / kHeightScreen,
    // height: 52.h,
    width: size.width,
    decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: BorderRadius.circular(120),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0,
            blurRadius: 9,
            offset: const Offset(0, 4),
          )
        ]),
    child: Center(
      child: Text('text text ',
          style: textTheme.headlineMedium!.copyWith(color: kWhiteColor)),
    ),
  );
}
