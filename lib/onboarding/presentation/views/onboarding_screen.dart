import 'package:cold_mailing/auth/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/onboading_data.dart';


class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double paddingValue = screenWidth*0.1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
            statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(paddingValue),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center, // Align the text to the center horizontally
                        ),
                      ),

                      SvgPicture.asset(
                        contents[i].image,
                        height: MediaQuery.of(context).size.width*0.75,
                        width: MediaQuery.of(context).size.height*0.75,
                      ),

                      // SizedBox(height: MediaQuery.of(context).size.height*0.0001),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child:ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SplashScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),

          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}