import 'package:cat_facts/config/app_router.dart';
import 'package:cat_facts/consts.dart';
import 'package:cat_facts/layouts/main_layout.dart';
import 'package:cat_facts/pages/fact_page/bloc/cat_fact_bloc.dart';
import 'package:cat_facts/theme/app_image.dart';
import 'package:cat_facts/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  bool isShow = true;

  @override
  void initState() {
    super.initState();
    context.read<CatFactBloc>().add(const GetCatFactEvent());
    _controller.forward();
    _controller.addListener(() {
      if (_controller.isCompleted) {
        RouteService.instance.pushAndPopUntil(const FactPageRoute(),
            predicate: (Route<dynamic> route) => false);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 64.0,
                height: 64.0,
                child: Image.asset(AppImage.cat_paw),
              ),
              const Text(
                AppConsts.catFacts,
                style: AppTextStyles.textStyle20bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
