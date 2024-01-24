import 'package:cold_mailing/src/dashboard/presentation/view/HomePage.dart';
import 'package:cold_mailing/src/top/presentation/views/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/appBar.dart';
import '../../../../gen/colors.gen.dart';
import '../widgets/bottomNavBar.dart';
import 'recentPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool isTextFieldTapped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          if (isTextFieldTapped) {

            setState(() {
              isTextFieldTapped = false;
            });
            return false; // Prevent default behavior (pop the route)
          }
          return true; // Allow default behavior
        },
        child: Scaffold(
          backgroundColor: AppColors.background2,
          appBar: CustomBarWidget(
            onTextFieldTap: (isTapped) {
              setState(() {
                isTextFieldTapped = isTapped;
              });
            },
          ),
          body: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              // Hide keyboard on scrolling
              if (notification is ScrollUpdateNotification) {
                if (isTextFieldTapped) {
                  setState(() {
                    isTextFieldTapped = false;
                  });
                }
              }
              return false;
            },
            child: Column(
              children: [
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                Expanded(
                  child: _getBodyContent(_currentIndex),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                )
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _getBodyContent(int currentIndex) {
    if (isTextFieldTapped) {
      // If TextField is tapped, return an empty Container to cover the body
      return RecentPage();
    } else {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return const Center(
            child: Text('Template Page'),
          );
        case 2:
          WidgetsBinding.instance!.addPostFrameCallback((_) {

            showModalBottomSheet(

              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: AppColors.white,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  // color: AppColors.white,
                  child:  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      30.verticalSpace,
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        icon: Icon(Icons.close),
                       // An empty Text widget for an empty label
                      )
                    ],
                  )
                );
              },
              isDismissible: false,
              isScrollControlled: true,
              enableDrag: false,
            );
          });


          return Container();
        case 3:
          return Container();
        case 4:
          return const Center(
            child: Text('Settings Page'),
          );
        default:
          return Container();
      }
    }
  }
}
