import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifi/comman/Widgets/Button/basic_app_button.dart';
import 'package:spotifi/comman/Widgets/appBar/app_bar.dart';
import 'package:spotifi/presentation/Assets/App_vactor.dart';
import 'package:spotifi/presentation/Pages/signin_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVactor.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              const SizedBox(height: 50),
              _fullname(context),
              const SizedBox(height: 20),
              _email(context),
              const SizedBox(height: 20),
              _password(context),
              SizedBox(height: 20),
              BasicAppButton(onpressed: (){}, title: "Create Account")
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullname(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Full Name")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
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
      decoration: InputDecoration(hintText: "Enter Password")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Do you have an account ?", style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          ),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                const SigninPage(),
              ),
            );
          },
              child: Text("Sign In"))
        ],
      ),
    );
  }
}
