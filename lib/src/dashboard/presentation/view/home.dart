import 'package:cold_mailing/src/dashboard/presentation/view/HomePage.dart';
import 'package:flutter/material.dart';
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
            // If TextField is tapped, hide the keyboard and set isTextFieldTapped to false
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
          return const Center(
            child: Text('Post Page'),
          );
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
