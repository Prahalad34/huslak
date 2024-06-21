import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Booking_history extends StatefulWidget {
  const Booking_history({Key? key}) : super(key: key);

  @override
  State<Booking_history> createState() => _Booking_historyState();
}

class _Booking_historyState extends State<Booking_history> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Appcolor.PrimaryColor8,
          Appcolor.PrimaryColor9

        ],
      ),
      appBar: AppBar(
        title: Text('Booking history'),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                        itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 10,),
                                Image.asset('assets/men.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10,),
                                          SizedBox(width: 10,),
                                          Text(arrname[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                       Text('Heart Disease'),
                                    Text('\$6.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                                  ],
                                ),
                                  Text('29/12/2022'),

                                ],
                              )
                            ],
                          ),
                        );

                        },)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var arrname = ['Sophia Fisher','Prisha Reyes','Turya Reyes','Michael Hensley','Sophia Fisher','Prisha Reyes'];
