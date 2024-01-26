import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../gen/colors.gen.dart';

class RecentPage extends StatefulWidget {
  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  int userInteractionValue = 0;

  final List<String> recentSearches = [
    'Search 1',
    'Search 2',
    'Search 3',
    'Search 4',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
               5.verticalSpace,
                  if (recentSearches.isNotEmpty)
                    Column(
                      children: recentSearches.map((search) {
                        return ListTile(
                          title: Row(
                            children: [
                              Icon(Icons.history,size: 15,),
                              10.horizontalSpace,
                              Text(search,style: TextStyle(
                                fontSize: 15

                              ),),
                            ],
                          ),
                          onTap: () {
                            // Handle the tap on a recent search
                            print('Tapped on: $search');
                          },
                        );
                      }).toList(),
                    )
                  else
                    Center(
                      child: Text('No recent searches.'),
                    ),
                ],
              ),
            ),
            10.verticalSpace,
            Container(
              color: AppColors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.verticalSpace,
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Today's news and views",style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
