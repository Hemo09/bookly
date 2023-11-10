import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/assets_data.dart';
import 'package:bookly/features/home_page/presentaion/views/home_page.dart';
import 'package:bookly/features/splash/presentaion/views/widgets/animated_build.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimate();
    naivigateToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetData.logo,
        ),
        const SizedBox(
          height: 4,
        ),
        SlidText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initAnimate() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 6),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void naivigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomePage(),
          transition: Transition.fade, duration: kTranisionPage);
    });
  }
}
