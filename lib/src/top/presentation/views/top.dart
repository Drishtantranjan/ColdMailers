import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/shimmerContainer.dart';
import '../../../../gen/colors.gen.dart';

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  bool showShimmer = true;

  @override
  void initState() {
    super.initState();

    // After 2 seconds, update the state to hide the shimmer effect
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          showShimmer = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2,
      body: SingleChildScrollView(
        child: Column(
          children: [


            5.verticalSpace,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
                  child: showShimmer
                      ? ShimmerContainer(
                    height: MediaQuery.of(context).size.height * 0.4,
                    shimmerDuration: Duration(milliseconds: 200),
                  )
                      : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
