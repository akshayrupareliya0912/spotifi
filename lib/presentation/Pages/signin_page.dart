import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifi/comman/Widgets/Button/basic_app_button.dart';
import 'package:spotifi/comman/Widgets/appBar/app_bar.dart';
import 'package:spotifi/presentation/Assets/App_vactor.dart';
import 'package:spotifi/presentation/Pages/signup_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVactor.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50),
            _email(context),
            const SizedBox(height: 20),
            _password(context),
            SizedBox(height: 20),
            BasicAppButton(onpressed: (){}, title: "Sign In")
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Sign In',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }


  Widget _email(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Email")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _password(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Password")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signupText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Not A Member ?", style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          ),
          TextButton(onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                const SignupPage(),
              ),
            );
          },
              child: Text("Register Now"))
        ],
      ),
    );
  }
}
