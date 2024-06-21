import 'package:flutter/material.dart';
import 'package:huslak/Categories.dart';
import 'package:huslak/Choose_Hospital.dart';
import 'package:huslak/Choose_your_city.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import 'Appcolor.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Text('OTP verification',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                  SizedBox(height: 5,),
                  Text('OTP has been sent to +91 78945 61230'),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: PinCodeTextField(

                        controller: controller,
                        maxLength: 4, // Set the length of the OTP
                        autofocus: true,
                        wrapAlignment: WrapAlignment.spaceBetween,
                        pinBoxWidth: 60,
                        pinBoxHeight: 60,
                        pinBoxRadius: 8,
                        pinBoxBorderWidth: 1,
                        pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 12),

                        onDone: (text) {
                          // This callback is triggered when the user enters the complete OTP
                          // print("OTP Entered: $text");
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 60,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Categories(),));
                    },
                    child: Container(
                      height: 60,
                      // width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Appcolor.PrimaryColor2

                      ),
                      child: Center(child: Text('Verify',style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don t receive otp? '),
                      Text(' Request again ',style: TextStyle(color: Appcolor.PrimaryColor2),),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
