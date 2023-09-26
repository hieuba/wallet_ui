import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/components/build_appbar.dart';
import 'package:wallet_ui/screens/discovery/discovery.dart';
import 'package:wallet_ui/screens/home/home.dart';
import 'package:wallet_ui/utils/colors.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            // top: -topPadding, // Điều chỉnh vị trí dựa trên chiều cao của AppBar
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0.h),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2, // Số lượng trang
                effect: WormEffect(
                  activeDotColor: kBlackColor,
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                ),
              ),
            ),
          ),
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              // Trang 1
              HomePage(topPadding: topPadding),
              // Trang 2
              Discovery(topPadding: topPadding),
            ],
          ),
        ],
      ),
    );
  }
}
