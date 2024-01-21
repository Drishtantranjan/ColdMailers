import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent, // Disable touch animation spread
      ),
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        unselectedIconTheme: const IconThemeData(color: AppColors.form),
        unselectedItemColor: Colors.blueGrey,
        unselectedLabelStyle:
            const TextStyle(fontSize: 10, color: Colors.blueGrey),
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_work_rounded,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              size: 20,
            ),
            label: 'Template',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.electric_bolt_rounded,
              size: 25,
         
            ),
            label: 'Top',
          
            activeIcon: Icon(
              Icons.electric_bolt_rounded,
              size: 25,
              color: Colors.yellow,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages_rounded,
              size: 20,
            ),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 20,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}