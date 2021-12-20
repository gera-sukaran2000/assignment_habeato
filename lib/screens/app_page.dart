import 'package:assignment1/widgets/itemsList.dart';
import 'package:assignment1/widgets/more_Milk.dart';
import 'package:assignment1/widgets/more_cheela.dart';
import 'package:assignment1/widgets/more_popular.dart';
import 'package:assignment1/widgets/more_porridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 150.w,
              child: StepProgressIndicator(
                totalSteps: 4,
                currentStep: 2,
                padding: 4,
                selectedColor: HexColor('#F98500'),
                unselectedColor: HexColor('#2BF98500'),
                roundedEdges: Radius.circular(5.r),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.w, left: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: HexColor('#F98500'),
                        size: 30,
                      )),
                  Spacer(),
                  Text(
                    'Breakfast',
                    style: TextStyle(
                        color: HexColor('#F98500'),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.search,
                        color: HexColor('#F98500'),
                        size: 32,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              'Select 3 or more dishes you like',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.h,
            ),
            ItemList(),
            SizedBox(
              height: 10.h,
            ),
            More_Popular(),
            SizedBox(
              height: 10.h,
            ),
            More_Porridge(),
            SizedBox(
              height: 10.h,
            ),
            More_Cheela(),
            SizedBox(
              height: 10.h,
            ),
            More_Milk(),
            SizedBox(
              height: 227.h,
            ),
            ButtonTheme(
              minWidth: 146.w,
              height: 40.h,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                elevation: 10,
                color: HexColor('#F98500'),
                highlightColor: HexColor('#F98500').withOpacity(0.3),
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      )),
    );
  }
}
