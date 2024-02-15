import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Ecommerce/verification.dart';

import '../constant/TextFormField.dart';

class ForgotpasswordWidget extends StatefulWidget {
  const ForgotpasswordWidget({super.key});

  @override
  State<ForgotpasswordWidget> createState() => _ForgotpasswordWidgetState();
}

class _ForgotpasswordWidgetState extends State<ForgotpasswordWidget> {
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
                    padding: EdgeInsets.only(top:140),
                    child: Text("Forgot Password",textAlign:TextAlign.center,
                        style: TextStyle(color: Color(0XFF153f69),
                         fontSize:25,fontFamily:'Poppins',fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    radius: 20,
                    hintText: "Email",
                    prefix: Icon(Icons.email_outlined,color: Colors.black,),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => VerificationWidget()));
                      },
                    ),
                  ),
                ],

              ),
            ),
          ),
        )
    );
  }
}
