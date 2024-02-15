import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'resetpassword.dart';

class VerificationWidget extends StatefulWidget {
  const VerificationWidget({super.key});

  @override
  State<VerificationWidget> createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
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
                    padding: EdgeInsets.only(top:80),
                    child: Text("Verification",textAlign:TextAlign.center,
                        style: TextStyle(color: Color(0XFF153f69),
                        fontSize:25,fontFamily:'Poppins', fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Text("Enter the verification code we just send you on your email address.",style: TextStyle(color: Colors.black),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:20,top:10 ),
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("Enter OTP",style: TextStyle(color:Colors.black),)),
                  ),
                  SizedBox(
                    height: 60,
                    child: OtpTextField(
                      numberOfFields: 6,
                      showFieldAsBox: false,
                      borderWidth: 2.0,
                      borderColor: Colors.black,
                      onCodeChanged: (String code) {
                      },
                      onSubmit: (String verificationCode) {
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20,top:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Don't received a code?",style: TextStyle(color: Colors.black,fontSize:12,fontFamily:'Poppins')),
                        Text("Resend",style: TextStyle(color: Colors.orange,fontSize:12,fontFamily:'Poppins')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(
                      child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 15),),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ResetpasswordWidget()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),

                ],

              ),
            ),
          ),
        )
    );
  }
}
