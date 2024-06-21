import 'dart:async';

import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Airpot_Transfer extends StatefulWidget {
  const Airpot_Transfer({Key? key}) : super(key: key);

  @override
  State<Airpot_Transfer> createState() => _Airpot_TransferState();
}

class _Airpot_TransferState extends State<Airpot_Transfer> {

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
        title: Text('Airpot Transfer',style: TextStyle(fontWeight: FontWeight.bold)),
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
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(imagename[index],height: 120,width: 113,fit: BoxFit.cover),
                                // Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                                // Text(arr1name[index],style: TextStyle(fontSize: 12,color: Appcolor.PrimaryColor2),),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(child: Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                                            SizedBox(),
                                            Text(arr1name[index],style: TextStyle(fontSize: 14,color: Appcolor.PrimaryColor2),)
                                          ],
                                        ),
                                      ),
                                      Text(arr2name[index]),
                                      SizedBox(height: 5,),
                                      Image.asset('assets/line.png',width: 180,),
                                      SizedBox(height: 5,),
                                      Stack(
                                        children: [
                                         // Divider(height: 10,),
                                          Image.asset(image1name[index],height: 40,width: 40,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 45,top: 4),
                                            child: Text(arr3name[index],style: TextStyle(fontWeight: FontWeight.w700),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 45,top: 20),
                                            child: Text('Lorem ipsum dolor',style: TextStyle(fontSize: 11),),
                                          ),
                                         // Divider(height: 0,)
                                        ],
                                      )
                                     ],
                                   ),
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

var imagename = ['assets/at.png','assets/at1.png','assets/at2.png','assets/at4.png','assets/at5.png'];

var arrname = ['Mahindra','Skoda','Maruti Suzuki','Tata','Jeep'];

var arr1name = ['€5.00/h','€8.00/h','€7.00/h','€10.00/h','€12.00/h'];

var arr2name = ['New Thar 2020','Kushaq','New Swift','Nexon EV','Wrangler Unlimited'];

var image1name = ['assets/drv.png','assets/drv1.png','assets/drv2.png','assets/drv3.png','assets/drv.png'];

var arr3name = ['Myron Coffey','Robert Clarissa','Yehudi Connor','Gabriel Hill','Myron Coffey'];
    
