import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/model/base_model.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget dataView(BuildContext context, BaseModel baseModel) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return SizedBox(
    height: size.height * 72 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: size.height * 48 / kHeightScreen,
            width: size.width * 48 / 375,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(baseModel.imageUrl.toString()))),
          ),
          SizedBox(width: 16.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'title',
                style: textTheme.headlineLarge,
              ),
              Text(
                'sub title',
                style: textTheme.headlineSmall,
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'price',
                style: textTheme.headlineLarge,
              ),
              Text(
                'sub price',
                style: textTheme.headlineSmall!.copyWith(color: Colors.green),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
