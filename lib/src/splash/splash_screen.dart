import 'package:cold_mailing/gen/assets.gen.dart';
import 'package:cold_mailing/src/auth/presentation/views/login_screen.dart';

import 'package:cold_mailing/src/dashboard/presentation/view/home.dart';
import 'package:cold_mailing/src/onboarding/presentation/views/onboarding_screen.dart';
import 'package:cold_mailing/src/top/presentation/widget/Card.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(Assets.splash.splashScreen)
      ..initialize().then((_) {
        _controller.setVolume(0.0);
        _controller.setLooping(false);
        _controller.play();
        setState(() {});
      });

    _controller.addListener(() {
      if (_controller.value.position == _controller.value.duration) {
        // Video has completed, navigate to the new screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
