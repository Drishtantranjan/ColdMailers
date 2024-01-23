import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

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
            icon: SvgPicture.asset(
              Assets.icons.home.icHome,
              height: 20, // Adjust the height as needed
              width: 20,  // Adjust the width as needed
            ),
            label: 'Home',
            activeIcon:  Image.asset(
              Assets.icons.home.icHomeAct.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.icons.home.icTemplate.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
            label: 'Template',
            activeIcon: Image.asset(
              Assets.icons.home.icTemplateAct.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.icons.home.icTop.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
            label: 'Top',

            activeIcon: Image.asset(
              Assets.icons.home.icTopAct.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.icons.home.icResume.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
            label: 'Resume',

            activeIcon: Image.asset(
              Assets.icons.home.icResumeAct.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.icons.home.icSaved.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
            label: 'Saved',

            activeIcon: Image.asset(
              Assets.icons.home.icSavedAct.path ,
              height: 24, // Adjust the height as needed
              width: 24,  // Adjust the width as needed
            ),
          ),
        ],
      ),
    );
  }
}