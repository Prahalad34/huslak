import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Super_Market extends StatefulWidget {
  const Super_Market({Key? key}) : super(key: key);

  @override
  State<Super_Market> createState() => _Super_MarketState();
}

class _Super_MarketState extends State<Super_Market> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  ScaffoldGradientBackground(
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
        title: Text('Super Market',style: TextStyle(fontWeight: FontWeight.bold),),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search,color: Appcolor.PrimaryColor2,),
                      hintText: 'Search for super market'
                  ),
                ),
                SizedBox(height: 20,),
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
                              Image.asset(imagename[index],height: 130,width: 130,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
                                    SizedBox(height: 5,),
                                    Text(arr1name[index],style: TextStyle(fontSize: 11),),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,color: Appcolor.PrimaryColor2,size: 20,),
                                        Text(arr2name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 18)),
                                      ],
                                    ),
                                    // SizedBox(height: 5,),
                                    // Text(arr3name[index],style: TextStyle(fontWeight: FontWeight.w700,)),
                                  ],
                                ),
                              )
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

var imagename = ['assets/sm1.png','assets/sm2.png','assets/sm3.png','assets/sm1.png','assets/sm2.png'];

var arrname = ['Family Market','Big Basket','D Mart','Family Market','Big Basket'];

var arr1name = ['06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain',
  '06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain'];

var arr2name = ['200 mtr','700 mtr','900 mtr','1.2 km','1.5 km'];

