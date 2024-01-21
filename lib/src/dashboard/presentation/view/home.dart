import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/Colors.dart';
import '../../../../core/utils/appBar.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add your content widgets here
            Text('Hello, World!'),
            // Add more widgets as needed
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: 5, // Set the number of items in the bottom navigation bar
        tabBuilder: (index, isActive) {
          // Customize the icon based on isActive
          return Icon(
            getIconForIndex(index), // Replace with your own logic to get icons for each index
            color: isActive ? AppColors.linearProgressColor : AppColors.buttonPrimaryText,
          );
        },
        activeIndex: 0, // Set the initial active index
        gapLocation: GapLocation.center, // Adjust as needed
        notchSmoothness: NotchSmoothness.smoothEdge, // Adjust as needed
        onTap: (index) {
          handleNavigation(index); // Implement your own logic for handling navigation
        },
        backgroundColor: AppColors.background, // Set the background color
        // activeColor: AppColors.linearProgressColor, // Set the active color
      ),
    );
  }

  IconData getIconForIndex(int index) {
    // Implement your own logic to map index to icons
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.search;
      case 2:
        return Icons.favorite;
      case 3:
        return Icons.notifications;
      case 4:
        return Icons.person;
      default:
        return Icons.home;
    }
  }

  void handleNavigation(int index) {
    // Implement your own logic for handling navigation
    // You can use Navigator or any other navigation mechanism here
    print('Navigating to index: $index');
  }
}
