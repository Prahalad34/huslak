import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  String? gender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
       title: Text('Payment',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Total Amount',style: TextStyle(fontSize: 16)),
                       Text('€30.00',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                     ],
                   ),
                Divider(height: 40,),
                Text('Preferred Payment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit/Debit card',style: TextStyle(fontSize: 16),),
                    Radio(
                      activeColor: Appcolor.PrimaryColor2,
                      value: "Credit/Debit card",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('UPI',style: TextStyle(fontSize: 16)),
                    Radio(
                      activeColor: Appcolor.PrimaryColor2,
                      value: "UPI",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Net Banking ',style: TextStyle(fontSize: 16)),
                    Radio(
                      activeColor: Appcolor.PrimaryColor2,
                      value: "Net Banking ",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cash',style: TextStyle(fontSize: 16)),
                    Radio(
                      activeColor: Appcolor.PrimaryColor2,
                      value: "Cash",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),


              ],
            ),
          )
        ),
      ),

    ));
  }
}
