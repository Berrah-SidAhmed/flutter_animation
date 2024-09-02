import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
//controller
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
        
          GestureDetector(
            onTap: () {
              if (bookmarked == false) {
                bookmarked = true;
                _controller.forward();
              } else {
                bookmarked = false;
                _controller.reverse();
              }
            },
            child: Lottie.asset('assets/2.json', controller: _controller),
          ),
          GestureDetector(
            onTap: () {
              if (bookmarked == false) {
                bookmarked = true;
                _controller.forward();
              } else {
                bookmarked = false;
                _controller.reverse();
              }
            },
            child: Lottie.asset('assets/3.json', controller: _controller),
          ),
        ]),
      ),
    );
  }
}
