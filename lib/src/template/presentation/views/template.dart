import 'package:cold_mailing/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../gen/colors.gen.dart';

class template extends StatelessWidget {
  const template({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                 ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8, left: 15),
                  child: Text(
                    "Template Category",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            8.verticalSpace,
            Container(
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10,bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width- MediaQuery.of(context).size.width*0.55,
                              // Adjusted width
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  Assets.images.template.bgLinkedinPng.path),
                            ),
                            color: AppColors.white,
                            border: Border.all(color: AppColors.formLight),
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                        3.horizontalSpace,
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width- MediaQuery.of(context).size.width*0.55,
                          decoration: BoxDecoration(

                            image: DecorationImage(
                                image:
                                    AssetImage(Assets.images.template.bgGmail.path)),
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.formLight),
                          ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width- MediaQuery.of(context).size.width*0.55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Assets.images.template.bgResume.path),
                            ),
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.formLight),
                          ),
                        ),
                        2.5.horizontalSpace,
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width- MediaQuery.of(context).size.width*0.55,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  Assets.images.template.bgCoverLetter.path),
                            ),
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.formLight),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            8.verticalSpace,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8, left: 15),
                  child: Text(
                    "Latest published content",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            8.verticalSpace,
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(color: AppColors.formLight),
                      ),
                    ),
                    8.verticalSpace,
                  ]);
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8, left: 15),
                  child: Text(
                    "Top starred content",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            8.verticalSpace,
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(

                        color: AppColors.white,

                        border: Border.all(color: AppColors.formLight),
                      ),
                    ),
                    8.verticalSpace,
                  ]);
                }),

          ],
        ),
      ),
    );
  }
}
