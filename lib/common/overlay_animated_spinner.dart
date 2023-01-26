import 'package:flutter/material.dart';
import 'package:very_good_template/core/config/colors.dart';
import 'package:very_good_template/core/values/localfiles.dart';

class OverLayAnimatedSpinner extends StatefulWidget {
  const OverLayAnimatedSpinner({super.key});

  @override
  State<OverLayAnimatedSpinner> createState() => _OverLayAnimatedSpinnerState();
}

class _OverLayAnimatedSpinnerState extends State<OverLayAnimatedSpinner>
    with TickerProviderStateMixin {
  AnimationController? anim;

  @override
  void initState() {
    super.initState();

    anim =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  dispose() {
    anim!.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    anim!.forward();
    return Center(
      child: SizedBox(
        // width: 440,
        // height: 440,
        child: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1)
              .animate(CurvedAnimation(parent: anim!, curve: Curves.easeInOut)),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.25),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(parent: anim!, curve: Curves.easeInOut),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.kPrimaryLightColor.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      LocalFiles.loaderImg,
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
