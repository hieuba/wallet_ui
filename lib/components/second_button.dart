import 'package:flutter/material.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget secondButton(BuildContext context, {required String text}) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 52 / kHeightScreen,
    width: size.width * .4,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.abc,
            color: kWhiteColor,
          ),
          Text(text,
              style: textTheme.headlineLarge!.copyWith(color: kWhiteColor)),
        ],
      ),
    ),
  );
}
