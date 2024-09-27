import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifi/comman/Widgets/Button/basic_app_button.dart';
import 'package:spotifi/comman/Widgets/Button/is_dark_mode.dart';
import 'package:spotifi/core/configs/theme/app_colors.dart';
import 'package:spotifi/presentation/Assets/App_vactor.dart';
import 'package:spotifi/presentation/Pages/signin_page.dart';
import 'package:spotifi/presentation/Pages/signup_page.dart';

import '../../comman/Widgets/appBar/app_bar.dart';

class SignupSignin extends StatelessWidget {
  const SignupSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVactor.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVactor.bottomPattern),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppVactor.authbg)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVactor.logo),
                    SizedBox(height: 55),
                    Text(
                      "Enjoy Listening The Music",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(
                      "Spotify is a proprietary Swedish audio streaming and media services provider ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                          fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 55),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              onpressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const SignupPage(),
                                  ),
                                );
                              },
                              title: 'Register'),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  const SigninPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: context.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
