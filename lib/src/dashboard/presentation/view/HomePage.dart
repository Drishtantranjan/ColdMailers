import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/shimmerContainer.dart';
import '../../../../gen/assets.gen.dart';
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: showShimmer
                      ? ShimmerContainer(
                          borderRadius: BorderRadius.circular(0),
                          height: MediaQuery.of(context).size.height * 0.35,
                          shimmerDuration: Duration(milliseconds: 200),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height * 0.55,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                5.verticalSpace,
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.085,
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      decoration: BoxDecoration(
                                          color: AppColors.form,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  Assets.icons.auth.icLinkedin),
                                              fit: BoxFit.contain),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    10.horizontalSpace,
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "dfsdfsdfsdfsdfdata",
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Text("sdfsdfdfs"),
                                          Text("dafdsta")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                20.verticalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hi Aman,"), //Header receiver
                                    5.verticalSpace,
                                    Text(
                                        "I am writing this to inform you that I won't be able to attend the offline interview at Jaipur, as my current locatiopn is bangalore. I hope you understand the concern about my limitation of travelling just for the sake of interview will no be possible for me."),
                                    5.verticalSpace,
                                    Text(
                                        "I am writing this to inform you that I won't be able to attend the offline interview at Jaipur, as my current locatiopn is bangalore. I hope you understand the concern about my limitation of travelling just for the sake of interview will no be possible for me."),
                                    5.verticalSpace,
                                    Text("Thank you"),
                                    10.verticalSpace, // salutation
                                  ],
                                ),
                                Divider(
                                    color: AppColors.formLight,
                                    thickness: 1,
                                    height: 1),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: AppColors.appbar,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.star_border_rounded)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.send_rounded)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.bookmark_border_rounded))
                                    ],
                                  ),
                                )
                              ],
                            ),
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
