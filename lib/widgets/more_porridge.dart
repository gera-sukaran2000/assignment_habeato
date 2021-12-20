import 'package:assignment1/provider/Helper2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class More_Porridge extends StatefulWidget {
  const More_Porridge({Key? key}) : super(key: key);

  @override
  _More_PorridgeState createState() => _More_PorridgeState();
}

class _More_PorridgeState extends State<More_Porridge> {
  @override
  Widget build(BuildContext context) {
    final items1 = Provider.of<PorridgeList>(context).porridgeItems;

    return GridView(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8, crossAxisCount: 3),
      children: List<Widget>.generate(items1.length, (index) {
            return GestureDetector(
              onTap: () {
                if (items1[index].selected == true) {
                  Provider.of<PorridgeList>(context, listen: false)
                      .uncheckedValue(items1[index]);
                } else {
                  Provider.of<PorridgeList>(context, listen: false)
                      .checkedValue(items1[index]);
                }
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Container(
                        height: 92.h,
                        width: 92.w,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          (items1[index].selected == true)
                              ? BoxShadow(
                                  blurRadius: 10.r,
                                  color: HexColor('#F98500'),
                                  spreadRadius: 3)
                              : const BoxShadow(
                                  blurRadius: 0,
                                  color: Colors.transparent,
                                  spreadRadius: 0)
                        ]),
                        child: Image.asset(items1[index].imageLoc),
                      ),
                      Positioned(
                          right: 10.w,
                          top: 5.h,
                          child: CircleAvatar(
                              radius: 10.r,
                              backgroundColor: (items1[index].selected == true)
                                  ? Colors.green
                                  : Colors.transparent,
                              child: Icon(
                                Icons.check,
                                size: 14,
                                color: (items1[index].selected == true)
                                    ? Colors.white
                                    : Colors.transparent,
                              )))
                    ]),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      items1[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
            //your continued code
          }) +
          [
            GestureDetector(
              onTap: () {
                Provider.of<PorridgeList>(context, listen: false)
                    .increaseValue();
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Container(
                        height: 92.h,
                        width: 92.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor('#FFC8DD'),
                        ),
                        child: Text(
                          'More\nPorridges,\nVermicelli &\nPoha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      ' ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            )
          ],
    );
  }
}