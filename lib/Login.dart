import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:huslak/Otp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selectable_container/selectable_container.dart';

import 'Appcolor.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

//  int? selectedItem;

  bool _value = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/mesa.png'),
                Text('Phone Number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 8,),
                Container(
                  height: 80,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IntlPhoneField(
                    flagsButtonPadding: const EdgeInsets.all(8),
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',

                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  )
                ),
                SizedBox(height: 60,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Otp(),));
                  },
                  child: Container(
                    height: 60,
                    // width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Appcolor.PrimaryColor2

                    ),
                    child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                  ),
                ),

            ]
          ),
        ),
          ),
      )
        );


  }
}

 var arrname = ['phone','google','Hi'];

