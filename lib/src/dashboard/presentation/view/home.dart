import 'package:cold_mailing/core/utils/bottomNavBar.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/appBar.dart';
import '../../../../gen/colors.gen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomBarWidget(),
        body: Column(
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
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _getBodyContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const Center(
          child: Text('Home Page'),
        );
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
