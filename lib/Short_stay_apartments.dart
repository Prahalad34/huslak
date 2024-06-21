import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Short_stay_apartments extends StatefulWidget {
  const Short_stay_apartments({Key? key}) : super(key: key);

  @override
  State<Short_stay_apartments> createState() => _Short_stay_apartmentsState();
}

class _Short_stay_apartmentsState extends State<Short_stay_apartments> {

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
        title: Text('Short stay apartments',style: TextStyle(fontWeight: FontWeight.bold)),
        titleSpacing: -5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 65,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(Icons.search,color: Appcolor.PrimaryColor2,),
                        hintText: 'Search for apartment'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                _showProgress ? Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ) :
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 4,
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
                              Image.asset(imagename[index],height: 130,width: 130,fit: BoxFit.cover),
                              SizedBox(width: 8,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                                    Text(arr1name[index],style: TextStyle(fontSize: 11),),
                                    SizedBox(height: 5,),
                                    Text(arr2name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 18)),
                                    SizedBox(height: 5,),
                                    Text(arr3name[index],style: TextStyle(fontWeight: FontWeight.w700,)),
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

var imagename = ['assets/ssa.png','assets/ssa1.png','assets/ssa2.png','assets/ssa3.png'];

var arrname = ['Cozy Nest Apartments','Welcome Retreat Apartments','Luxe Living Apartments','Relaxing Apartments'];

var arr1name = ['07529, Balearic Islands, barcelona Spain','14830, La Rioja, barcelona Spain','2000, Guipúzcoa, barcelona Spain',
  '13193, Ciudad Real, barcelona Spain',];

var arr2name = ['€25.00/d','€22.00/d','€30.00/d','€18/.00/d'];

var arr3name = ['Furnished','Unfurnished','Semi-furnished','Unfurnished'];

