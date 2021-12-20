import 'package:assignment1/provider/Helper.dart';
import 'package:assignment1/provider/Helper2.dart';
import 'package:assignment1/screens/app_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: () => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => PopularList()),
          ChangeNotifierProvider(create: (ctx) => PorridgeList()),
          ChangeNotifierProvider(
            create: (ctx) => CheelaList(),
          ),
          ChangeNotifierProvider(create: (ctx) => MilkList()),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: AppPage()),
      ),
    );
  }
}
