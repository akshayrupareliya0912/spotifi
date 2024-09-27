import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifi/presentation/Assets/App_vactor.dart';

import '../intro/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});



  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset(AppVactor.logo)),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext) => GetStarted(),
      ),
    );
  }
}
