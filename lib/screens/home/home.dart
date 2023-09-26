import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/components/build_appbar.dart';
import 'package:wallet_ui/components/data_view.dart';
import 'package:wallet_ui/components/pocket_view.dart';
import 'package:wallet_ui/components/second_button.dart';
import 'package:wallet_ui/components/text_view.dart';
import 'package:wallet_ui/model/base_model.dart';
import 'package:wallet_ui/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.topPadding,
  });

  final double topPadding;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      top: false,
      child: Column(
        children: [
          _balanceContent(context, textTheme, size),
          textView(context, 'Assets'),
          SizedBox(
            height: size.height * 288 / kHeightScreen,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 0),
              itemCount: baseData.length,
              itemBuilder: (context, index) {
                return dataView(context, baseData[index]);
              },
            ),
          ),
          textView(context, 'Pockets'),
          pocketView(context),
          pocketView(context),
        ],
      ),
    );
  }
}

Widget _balanceContent(BuildContext context, TextTheme textTheme, Size size) {
  return SizedBox(
    height: size.height * 169 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title
          Row(
            children: [
              Text(
                'My Wallet',
                style: textTheme.headlineSmall,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  color: Colors.grey,
                ),
                height: 18.h,
                width: 70.w,
              ),
            ],
          ),
          // balance
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$32.433.32',
                style: textTheme.displayLarge,
              ),
              Container(
                width: 70.w,
                height: 28.h,
                decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(120)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Center(
                      child: Text(
                    '+3.32%',
                    style:
                        textTheme.headlineMedium!.copyWith(color: kWhiteColor),
                  )),
                ),
              ),
            ],
          ),

          // btn
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              secondButton(context, text: 'Send'),
              secondButton(context, text: 'Recieve'),
            ],
          )
        ],
      ),
    ),
  );
}

// Widget _bodyContent(BuildContext context) {
//   var size = MediaQuery.of(context).size;
//   var textTheme = Theme.of(context).textTheme;
//   return Container(
//     height: size.height * 288 / kHeightScreen,
//     child: ListView.builder(
//       padding: EdgeInsets.only(top: 0),
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return dataView(context);
//       },
//     ),
//   );
// }
