import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  var activeIndex = 0;

  Map<int, String> items = {
    0: 'All',
    1: 'Popular',
    2: 'Porridges,\nVermicelli & Poha',
    3: 'Cheela',
    4: 'Milk\nBased',
    5: 'Parathas & Stuffed Roti'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      color: HexColor('#FDDAB3'),
      child: ListView.separated(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = items.keys.elementAt(index);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.only(top: 5.h, bottom: 5.h),
                  padding:
                      EdgeInsets.symmetric(vertical: 7.h, horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: (index == activeIndex)
                        ? Colors.white
                        : Colors.transparent,
                  ),
                  child: Text(
                    items.values.elementAt(index),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color:
                          (index == activeIndex) ? Colors.orange : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (ctx, index) => SizedBox(
                width: 9.w,
              ),
          itemCount: items.length),
    );
  }
}
