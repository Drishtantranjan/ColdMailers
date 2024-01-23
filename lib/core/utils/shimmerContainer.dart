
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../gen/colors.gen.dart';

class ShimmerContainer extends StatefulWidget {
  final double height;
  final Duration shimmerDuration;

  ShimmerContainer({required this.height, required this.shimmerDuration});

  @override
  _ShimmerContainerState createState() => _ShimmerContainerState();
}

class _ShimmerContainerState extends State<ShimmerContainer> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: widget.shimmerDuration,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);

    _animationController.forward();

    // After the shimmer duration, reverse the animation and show a white container
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return _animation.value < 1.0
            ? Shimmer.fromColors(
          baseColor: Color(0xFFC2C2C2),
          highlightColor: Colors.grey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: widget.height,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Color(0xFFC2C2C2),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        )
            : Container(
          width: MediaQuery.of(context).size.width,
          height: widget.height,
          color: Colors.white, // Show white container after shimmer effect
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
