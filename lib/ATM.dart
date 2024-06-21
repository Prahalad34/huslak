import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class ATM extends StatefulWidget {
  const ATM({Key? key}) : super(key: key);

  @override
  State<ATM> createState() => _ATMState();
}

class _ATMState extends State<ATM> {
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
        title: Text('ATM',style: TextStyle(fontWeight: FontWeight.bold),),
        titleSpacing: -6,
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
                      hintText: 'Search for ATM'
                  ),
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
                                  Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
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


var imagename = ['assets/atm1.png','assets/atm2.png','assets/atm3.png','assets/atm1.png','assets/atm2.png'];

var arrname = ['Banco Santander ATM','CaixaBank ATM','Unicaja Banco ATM','Banco Santander ATM','CaixaBank ATM'];

var arr1name = ['06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain',
  '06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain'];

var arr2name = ['500 mtr','700 mtr','500 mtr','1 km','1.5 km'];
