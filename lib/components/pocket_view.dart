import 'package:flutter/material.dart';
import 'package:wallet_ui/components/card_view.dart';
import 'package:wallet_ui/utils/colors.dart';

Widget pocketView(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 175 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cardView(context),
          cardView(context),
        ],
      ),
    ),
  );
}
