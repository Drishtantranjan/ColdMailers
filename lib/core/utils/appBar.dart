import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0.h,
      child: Stack(

        children: <Widget>[
          Container(
            color:AppColors.background,
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            child:Align(
             alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 6.0.sp,top: 35.sp),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.borderColor, // Set the color of the border
                        width: 1.0,           // Set the width of the border
                      ),
                    ),

                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 20,
                    ),
                  ),
                ))
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.055,
            left: MediaQuery.of(context).size.width*0.09,
            right: MediaQuery.of(context).size.width*0.05,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    border: Border.all(
                        color: AppColors.borderColor, width: 1.0),
                    color: Colors.white),
                child: Row(
                  children: [

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: AppColors.hintColor
                          ),
                          hintText: "Search Company",
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.hintColor
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                  Icons.more_vert_rounded
              ),
            ),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Divider(
              height: 0,

            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(160);
}
