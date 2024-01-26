import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/shimmerContainer.dart';
import '../../../../gen/colors.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showShimmer = true;

  @override
  void initState() {
    super.initState();


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
        Container(
        margin: EdgeInsets.symmetric(vertical: 0.0,),
        child: showShimmer
            ? ShimmerContainer(
          height: MediaQuery.of(context).size.height * 0.35,
          shimmerDuration: Duration(milliseconds: 200),
        )
            : Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0)
          ),
        ),
      ),
            5.verticalSpace,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0,),
                  child: showShimmer
                      ? ShimmerContainer(
                    borderRadius: BorderRadius.circular(0),
                    height: MediaQuery.of(context).size.height * 0.35,
                    shimmerDuration: Duration(milliseconds: 200),
                  )
                      : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0)
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
