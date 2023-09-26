import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget buildAppbar(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 56 / kHeightScreen,
    width: size.width,
    decoration: const BoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
          ),
          Center(
            child: Text('my app bar',
                style: textTheme.headlineMedium!.copyWith(color: kWhiteColor)),
          ),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade50,
                    offset: const Offset(-1, 1),
                    spreadRadius: 7,
                    blurRadius: 5,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/icons/qr-code-m.png'),
            ),
          ),
        ],
      ),
    ),
  );
}
