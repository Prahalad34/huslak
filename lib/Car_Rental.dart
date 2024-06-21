import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Car_Rental extends StatefulWidget {
  const Car_Rental({Key? key}) : super(key: key);

  @override
  State<Car_Rental> createState() => _Car_RentalState();
}

class _Car_RentalState extends State<Car_Rental> {

  bool _showProgress = true;

  @override
  void initState() {
    super.initState();
    // Set the timer to hide the CircularProgressIndicator after 5 seconds
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showProgress = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.white,
          Appcolor.PrimaryColor2

        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Car Rental',style: TextStyle(fontWeight: FontWeight.bold)),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20,),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ) :
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Image.asset(imagename[index],height: 150,width: 100,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(arrname[index],textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,)),
                                     SizedBox(height: 8,),
                                     Row(
                                       children: [
                                         Image.asset('assets/seat.png'),
                                         SizedBox(width: 4,),
                                         Text('4 seats'),
                                         SizedBox(width: 28,),
                                         Image.asset('assets/logo.png'),
                                         SizedBox(width: 4,),
                                         Text('Automatic')
                                       ],
                                     ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Image.asset('assets/large.png'),
                                        SizedBox(width: 4,),
                                        Text('1 large bag',style: TextStyle(fontSize: 12),),
                                        SizedBox(width: 15,),
                                        Image.asset('assets/small.png'),
                                        SizedBox(width: 4,),
                                        Text('1 small bag',style: TextStyle(fontSize: 12))
                                      ],
                                    ),
                                    Text(arr1name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 18))
                                  ],
                                ),
                              )
                            ],
                          ),
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

var imagename = ['assets/audi.png','assets/audi1.png','assets/audi2.png','assets/audi3.png','assets/audi.png'];

var arrname = ['Audi R8 Spyder RWD','Land Rover Discovery Sport','Porsche 911 Carrera S','BMW M3','Audi R8 Spyder RWD'];

var arr1name = ['€60.00/d','€70.00/d', '€75.00/d','€80/.00/d','€60.00/d'];

