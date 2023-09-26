import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/screens/home/home.dart';
import 'package:wallet_ui/screens/home/test_list_item.dart';
import 'package:wallet_ui/screens/pageview/pageview.dart';
import 'package:wallet_ui/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Themes.lightTheme,
          home: PageViewScreen(),
        );
      },
    );
  }
}
