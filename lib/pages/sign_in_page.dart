import 'package:flutter/material.dart';
import 'package:nebengyuk/theme.dart';

class SignInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      Widget header(){
        return Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Sign in to continue',
                style: secondaryTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        );
      }

      Widget Logo(){
        return Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[ 
            Container(
              width: 84,
              height: 89,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Logo.png'),
                ),
              ),
            ),
          ]
         ),
      );
    }

      Widget emailInput(){
        return Container(
          margin: EdgeInsets.only( top: 20),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email', style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child : Center(
                  child : Row(
                    children : [
                      Image.asset(
                        'assets/Logo_Email.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address',
                            hintStyle: secondaryTextStyle.copyWith(
                              // fontWeight: light,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput(){
        return Container(
          margin: EdgeInsets.only( top: 20),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password', style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child : Center(
                  child : Row(
                    children : [
                      Image.asset(
                        'assets/Logo_Password.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          // for hide password
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Your Password',
                            hintStyle: secondaryTextStyle.copyWith(
                              // fontWeight: light,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget footer(){
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account? ',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
                ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/sign-up');
                },
                child: Text( 
                  'Sign Up',
                  style: dateTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget signInButton(){
        return Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Sign In',
              style: buttonTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          );
      }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body:SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              Logo(),
              emailInput(),
              passwordInput(),
              signInButton(),
              Spacer(),
              footer(),
            ],
          ),
         ),
      ),
    );
  }
}