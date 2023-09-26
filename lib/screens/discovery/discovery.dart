import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/components/build_appbar.dart';
import 'package:wallet_ui/components/data_view.dart';
import 'package:wallet_ui/components/pocket_view.dart';
import 'package:wallet_ui/components/text_view.dart';
import 'package:wallet_ui/model/base_model.dart';
import 'package:wallet_ui/utils/colors.dart';

class Discovery extends StatefulWidget {
  const Discovery({
    super.key,
    required this.topPadding,
  });

  final double topPadding;

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  final PageController _pageController = PageController(
    viewportFraction: .95,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> categoriesList = [
    'Trending',
    'Watchlist',
    'Favorites',
    'Stablecoins',
    'BNB Chain Ecosystem',
  ];

  int selectedIdx = 0;

  var currentText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(top: widget.topPadding),
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // buildAppbar(context),
                  // SizedBox(height: 12.h),
                  _textTop(context),
                  _sliderview(context, _pageController),
                  SizedBox(height: 12.h),
                  textView(context, 'Investing Strategies'),
                  pocketView(context),
                  pocketView(context),
                  SizedBox(height: 12.h),
                  textView(context, 'Coin Lists'),
                  _scrollView(categoriesList, (index) {
                    setState(() {
                      setState(() {
                        currentText = categoriesList[index];
                        selectedIdx = index;
                      });
                    });
                  }, context, selectedIdx),
                  SizedBox(height: 12.h),
                  _bodyContent(currentText, context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _textTop(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 76 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'December 05',
            style: textTheme.headlineSmall,
          ),
          Text(
            'For you today',
            style: textTheme.headlineLarge,
          ),
        ],
      ),
    ),
  );
}

Widget _sliderview(BuildContext context, PageController controller) {
  var size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.height * 200 / kHeightScreen,
    width: size.width,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 0,
                  blurRadius: 9,
                  offset: const Offset(0, 4),
                )
              ],
              color: Colors.amber,
            ),
          );
        },
      ),
    ),
  );
}

Widget _bodyContent(String text, BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height * .5,
    // color: Colors.blue,
    child: ListView.builder(
      itemCount: baseData.length,
      itemBuilder: (context, index) {
        return dataView(context, baseData[index]);
      },
    ),
  );
}

Widget _scrollView(
  List<String> listData,
  Function(int) onTap,
  BuildContext context,
  int selectedIndex,
) {
  var size = MediaQuery.of(context).size;
  return SizedBox(
    height: size.height * 44 / kHeightScreen,
    width: size.width,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: listData.length,
      itemBuilder: (context, index) {
        var current = listData[index];
        bool isSelected = index == selectedIndex;
        return Container(
          margin: const EdgeInsets.all(5),
          width: size.width * .35,
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  onTap(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? kBlackColor : const Color(0xfff4f5f8),
                    borderRadius: BorderRadius.circular(120),
                  ),
                  width: size.width * .4,
                  height: size.height * 44 / kHeightScreen,
                  child: Center(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Icon(Icons.abc),
                          Text(
                            current,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isSelected ? kWhiteColor : kBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
