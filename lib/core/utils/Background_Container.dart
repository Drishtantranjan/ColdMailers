import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final ImageProvider imageProvider;
  const BackgroundContainer(
      {super.key,
        required this.child,
        required this.imageProvider,
        this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: padding,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
              ],
              stops: [0.0, 0.7, 1.0],
            ),
          ),
          child: child,
        ));
  }
}
