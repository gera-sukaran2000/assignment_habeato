import 'package:assignment1/provider/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class More_Popular extends StatefulWidget {
  const More_Popular({Key? key}) : super(key: key);

  @override
  _More_PopularState createState() => _More_PopularState();
}

class _More_PopularState extends State<More_Popular> {
  @override
  Widget build(BuildContext context) {
    final items = Provider.of<PopularList>(context).popularItems;
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8, crossAxisCount: 3),
        children: List<Widget>.generate(items.length, (index) {
              return GestureDetector(
                onTap: () {
                  if (items[index].selected == true) {
                    Provider.of<PopularList>(context, listen: false)
                        .uncheckedValue(items[index]);
                  } else {
                    Provider.of<PopularList>(context, listen: false)
                        .checkedValue(items[index]);
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
                            (items[index].selected == true)
                                ? BoxShadow(
                                    blurRadius: 10.r,
                                    color: HexColor('#F98500'),
                                    spreadRadius: 3)
                                : const BoxShadow(
                                    blurRadius: 0,
                                    color: Colors.transparent,
                                    spreadRadius: 0)
                          ]),
                          child: Image.asset(items[index].imageLoc),
                        ),
                        Positioned(
                            right: 10.w,
                            top: 5.h,
                            child: CircleAvatar(
                                radius: 10.r,
                                backgroundColor: (items[index].selected == true)
                                    ? Colors.green
                                    : Colors.transparent,
                                child: Icon(
                                  Icons.check,
                                  size: 14,
                                  color: (items[index].selected == true)
                                      ? Colors.white
                                      : Colors.transparent,
                                )))
                      ]),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        items[index].title,
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
                  Provider.of<PopularList>(context, listen: false)
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
                            color: Colors.blue.shade200,
                          ),
                          child: Text(
                            'More\nPopular',
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
      ),
    );
  }
}
