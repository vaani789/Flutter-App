import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmWidget extends StatefulWidget {
  const ConfirmWidget({super.key});

  @override
  State<ConfirmWidget> createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmWidget> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter:ImageFilter.blur(
        sigmaX: 6.0,
        sigmaY: 6.0,
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 250,
              child: Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0.0,
                backgroundColor: Color(0XFF153f69),
                child:Container(
                  height: 200,
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage('assets/images/success.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Congratulation',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                      Text('Password is reset',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),

              ),
            ),
            Positioned(
                right:30,top: 15,
                child: Icon(Icons.cancel,size:30,color: Colors.white,),
            )
          ],
        ),
      ),
    );

  }
}
