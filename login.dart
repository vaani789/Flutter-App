import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/Ecommerce/signup.dart';
import 'package:my_app/constant/TextFormField.dart';

import '../MlM/bottomNaviogation.dart';
import '../MlM/dashboard/homepage.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool isChecked = false;
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0XFF153f69),
        body: Center(
          child: Container(
            width: size.width*0.9,
            height: 450,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:50),
                    child: Text("Welcome,\nGlad to see You!",textAlign:TextAlign.center,style: TextStyle(color: Color(0XFF153f69),fontSize:25,fontFamily:'Poppins')),
                  ),
                  SizedBox(height: 30,),
                  CustomTextField(
                    radius: 20,
                    hintText: "Email",
                    prefix: Icon(Icons.email_outlined,color: Colors.black,),
                  ),
                  CustomTextField(
                    hintText: "Password",
                    radius: 20,
                    prefix: Icon(Icons.lock_outline_rounded,color: Colors.black,),
                    isObscureText: _isHidden,
                    isPassword: _isHidden,
                    suffixwidget: InkWell(
                        onTap: _toggle,
                        child: Icon(_isHidden ? Icons.visibility_off : Icons.visibility,color: Colors.black,),
                      ),
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SizedBox(
                              height:20,
                              width: 20,
                              child: ColoredBox(
                                color: Color(0xFF153F69),
                                child: Checkbox(
                                  value: isChecked,
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.all(Color(0xFF153F69)),
                                  activeColor: Color(0xFF153F69),
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7,),
                          Text('Remember me',style: TextStyle(color:Colors.black),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10),
                        child: Row(
                          children: [
                            Text('Forgot Password?',style: TextStyle(color:Colors.black),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: size.width*0.8,
                    child: ElevatedButton(
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 15),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF153f69),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal),
                      ),
                      onPressed: () {
                          Get.to(BottomNavigationWidget());
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageWidget()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color:Colors.black,fontSize:15,fontFamily:'Poppins')),
                      InkWell(
                          onTap: (){
                            Get.to(SignupWidget());
                            //Navigator.push(context,MaterialPageRoute(builder: (context) => SignupWidget()));
                          },
                          child: Text("Sign up",style: TextStyle(color: Colors.orange,fontSize:15,fontFamily:'Poppins'))),
                    ],
                  ),
                ],

              ),
            ),
          ),
        )
    );
  }
  void _toggle(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
