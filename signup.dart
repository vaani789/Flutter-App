import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/TextFormField.dart';
import 'forgotpassword.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  bool isChecked = false;
  bool _isHidden = true;
  bool _isHiddens = true;
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
                    child: Text("Create Account\nto get started now!",textAlign:TextAlign.center,style: TextStyle(color: Color(0XFF153f69),fontSize:25,fontFamily:'Poppins')),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                  CustomTextField(
                    hintText: "Confirm Password",
                    radius: 20,
                    prefix: Icon(Icons.lock_outline_rounded,color: Colors.black,),
                    isObscureText: _isHiddens,
                    isPassword: _isHiddens,
                    suffixwidget: InkWell(
                      onTap: _toggle1,
                      child: Icon(_isHiddens ? Icons.visibility_off : Icons.visibility,color: Colors.black,),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(
                      child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 15),),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotpasswordWidget()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(fontSize:15,fontFamily:'Poppins',color: Colors.black)),
                      Text("Login",style: TextStyle(color: Colors.orange,fontSize:15,fontFamily:'Poppins')),
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
  void _toggle1(){
      setState(() {
        _isHiddens = !_isHiddens;
      });
  }
}
