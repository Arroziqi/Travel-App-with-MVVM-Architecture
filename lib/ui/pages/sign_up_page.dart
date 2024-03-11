import 'package:demo_app/ui/widgets/custom_button.dart';
import 'package:demo_app/ui/widgets/custom_tac_button.dart';
import 'package:demo_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 30,),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection(){

      Widget nameInput(){
        return CustomTextFormField(label: 'Full Name');
      }

      Widget emailInput(){
        return CustomTextFormField(label: 'Email Address');
      }

      Widget passwordInput(){
        return CustomTextFormField(label: 'Password', obsecureText: true,);
      }

      Widget hobbyInput(){
        return CustomTextFormField(label: 'Hobby');
      }

      Widget submitButton(){
        return CustomButton(onPressed: () {
          Navigator.pushNamed(context, '/bonus');
        }, text: 'Get Started',);
      }

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton(){
      return Container(
        margin: EdgeInsets.only(top: 50, bottom: 73,),
        child: CustomTacButton(),
      ) ;
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
