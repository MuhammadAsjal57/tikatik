import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tikatik/core/utils/Image_constant.dart';
import 'package:tikatik/core/utils/size_utils.dart';
import 'package:tikatik/presentation/auth/signup_screen.dart';
import 'package:tikatik/theme/app_style.dart';
import 'package:tikatik/widgets/custom_button.dart';
import 'package:tikatik/widgets/custom_text_field.dart';



class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff1C1760),
      body: Stack(
        children: [
          Positioned(
              top: 100,
              left: 300,
              child: Transform.rotate(
                angle: 2,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xff744ff9),
                        Color(0xff8369de),
                        Color(0xff8da0cb)
                      ])),
                ),
              )),
          Positioned(
              bottom: 250,
              right: 150,
              child: Transform.rotate(
                angle: 8,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xff744ff9),
                        Color(0xff8369de),
                        Color(0xff8da0cb)
                      ])),
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(top: 60,left: 20,right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignInScreen()));
                    },
                    child: Text("Sign Up?",style: AppStyle.txtMontserratRomanRegularWhite12,)),
                ),
              ),
              Padding(
                padding: getPadding(top: 20,left: 20,right: 20),
                child: Text("Go ahead and set up your account",style: AppStyle.txtMontserratBold20White,),
              ),
              Padding(
                padding: getPadding(top: 5,left: 20,right: 20),
                child: Text("Sign in-up to enjoy the best experience",style: AppStyle.txtMontserratRomanRegularWhite1260,),
              ),
              SizedBox(height: getVerticalSize(40),),
              Expanded(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: Container(  
                      decoration: BoxDecoration( 
                        color: Colors.grey.withOpacity(0.1),
                        border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                        borderRadius: const BorderRadius.all(Radius.circular(25))
                      ),
                      child: Padding(
                        padding:getPadding(left: 20,right: 20),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text(
                              'Email*',
                              style:AppStyle.txtMontserratRomanSemiBold14White
                            ),
                            SizedBox(height: getVerticalSize(6),),
                            CustomTextField( appName: "Enter your Email"),
                            SizedBox(height: getVerticalSize(10),),
                            Text(
                              'Password*',
                              style:AppStyle.txtMontserratRomanSemiBold14White
                            ),
                            SizedBox(height: getVerticalSize(6),),
                            CustomTextField( appName: "Enter your Password"),
                            SizedBox(height: getVerticalSize(30),),
                            CustomButton( name: "Login"),
                            SizedBox(height: getVerticalSize(20),),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'OR',
                                style:AppStyle.txtMontserratRomanRegularWhite14
                              ),
                            ),
                            SizedBox(height: getVerticalSize(20),),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size.fromHeight(55),
                                shape: RoundedRectangleBorder()
                              ),
                              onPressed: (){}, icon: Icon(Icons.email), label: Text("Continue with Email")),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size.fromHeight(55),
                                shape: RoundedRectangleBorder()
                              ),
                              onPressed: (){}, icon: Image.asset(ImageConstant.googleLogo,width: 30,), label: Text("Continue with Google"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



