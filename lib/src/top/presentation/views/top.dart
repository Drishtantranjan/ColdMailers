import 'package:cold_mailing/core/utils/app_text.dart';
import 'package:cold_mailing/gen/assets.gen.dart';
import 'package:cold_mailing/src/top/presentation/widget/Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../gen/colors.gen.dart';
import '../../../dashboard/presentation/view/home.dart';


class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
          
            color: AppColors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.0),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    icon: Icon(Icons.close),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("TOP VOICES",style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ),
                  20.verticalSpace,
                  Padding(
                    padding: EdgeInsets.all(8),
                    child : Text("Google Developer Experts",style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),)),
                  5.verticalSpace,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0,),
                    height: MediaQuery.of(context).size.height*0.28, // Adjust the height as needed
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CardWidget(
                            title: "GDE",
                            name: "Drishtant",
                            summary: "I am passionate flutter developer holding 1.5 years of experience",
                            avatarImage: AssetImage(
                                Assets.images.home.dummyImage.path),
                            imageProvider: AssetImage(
                                Assets.icons.top.bgTopCard2.path),
                            child: Column(
                              children: [
                                // Your content for each card goes here
                                Text("Card $index"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  10.verticalSpace,
                  Padding(
                    padding: EdgeInsets.all(8),
                    child :  Text("FAANG Career Experts",style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),)),
                  5.verticalSpace,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0,),
                    height: MediaQuery.of(context).size.height*0.28, // Adjust the height as needed
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CardWidget(
                            title: "GDE",
                            name: "Drishtant",
                            summary: "I am passionate flutter developer holding 1.5 years of experience",
                            avatarImage: AssetImage(
                                Assets.images.home.dummyImage.path),
                            imageProvider: AssetImage(
                                Assets.icons.top.bgTopCard.path),
                            child: Column(
                              children: [
                                // Your content for each card goes here
                                Text("Card $index"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  5.verticalSpace,
                  Padding(
                    padding: EdgeInsets.all(8),
                    child : Text("Early Career Experts",style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),)),
                  5.verticalSpace,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0,),
                    height: MediaQuery.of(context).size.height*0.28,
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CardWidget(
                            title: "GDE",
                            name: "Drishtant",
                            summary: "I am passionate flutter developer holding 1.5 years of experience",
                            avatarImage: AssetImage(
                                Assets.images.home.dummyImage.path),
                            imageProvider: AssetImage(
                                Assets.icons.top.bgTopCard3.path),
                            child: Column(
                              children: [

                                Text("Card $index"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  50.verticalSpace
                ],
              ),
            ),
          );
        },
        isDismissible: false,
        isScrollControlled: true,
        enableDrag: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Adjust as needed
  }
}
