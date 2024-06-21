import 'dart:async';

import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Flights extends StatefulWidget {
  const Flights({Key? key}) : super(key: key);

  @override
  State<Flights> createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {

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
        title: Text('Flights',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -5,
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
                      height: 180,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(imagename[index]),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Departure'),
                                  Text('4:25 pm',style: TextStyle(fontWeight: FontWeight.w700),),
                                  SizedBox(height: 25,),
                                  Text('Estimation'),
                                  Text('7h 15m',style: TextStyle(fontWeight: FontWeight.w700),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Arrive'),
                                  Text('7:40 pm',style: TextStyle(fontWeight: FontWeight.w700),),
                                  SizedBox(height: 25,),
                                  Text('€40.00',style: TextStyle(fontWeight: FontWeight.w700,color: Appcolor.PrimaryColor2)),
                                  Text('/person',style: TextStyle(fontWeight: FontWeight.w700),)

                                ],
                              ),
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

 var imagename = ['assets/fli1.png','assets/fli2.png','assets/fli3.png','assets/fli2.png','assets/fli1.png'];
