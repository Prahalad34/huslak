import 'package:flutter/material.dart';
import 'package:huslak/ATM.dart';
import 'package:huslak/Airpot_Transfer.dart';
import 'package:huslak/Car_Rental.dart';
import 'package:huslak/Carer.dart';
import 'package:huslak/Choose_your_city.dart';
import 'package:huslak/Emergency_Numbers.dart';
import 'package:huslak/Find_Doctor.dart';
import 'package:huslak/Flights.dart';
import 'package:huslak/Gold_Box.dart';
import 'package:huslak/Hotels.dart';
import 'package:huslak/Monthly_rental_apartments.dart';
import 'package:huslak/Pharmacies.dart';
import 'package:huslak/Profile.dart';
import 'package:huslak/Restaurants.dart';
import 'package:huslak/Rooms.dart';
import 'package:huslak/Short_stay_apartments.dart';
import 'package:huslak/Super_Market.dart';
import 'package:huslak/Translation.dart';
import 'Appcolor.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
               },
              child: Row(
                children: [
                 // Image.asset('assets/men.png',height: 50,width: 50,),
                  SizedBox(),
                  Text('Barcelona',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('-Sant Jordi Cardiovascular Center',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_down,size: 15,)
                ],
              ),
            ),
            leading: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset('assets/men.png',height: 50,width: 50,),
              ),
            ),
            titleSpacing: 5,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 3/4,

                      ),
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount:15 ,
                      itemBuilder: (BuildContext ctx, index){
                        return InkWell(
                          onTap: (){
                             setState((){
                                if(arrname[index].toString()=="Accommodation"){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                      ElevatedButton(
                                    onPressed: (){
                                      showDialog(context: context, builder: (BuildContext context){
                                        return AlertDialog(
                                            content: Container(
                                              child: Column(
                                                children: [
                                                ],
                                              ),
                                            ),
                                          );
                                      });
                                    },
                                      child: Container(
                                        height: 610,
                                        width: 560,
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Hotels(),));
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 30),
                                                child: Container(
                                                  margin: EdgeInsets.only(bottom: 25),
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(8),
                                                      color: Appcolor.PrimaryColor2
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Image.asset('assets/pop.png'),
                                                      Text('Hotels',style: TextStyle(color: Colors.white,fontSize: 20),)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Monthly_rental_apartments(),));
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(bottom: 25),
                                                height: 120,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: Appcolor.PrimaryColor2
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Image.asset('assets/pop1.png'),
                                                    Text('Monthly rental\n apartments',style: TextStyle(color: Colors.white,fontSize: 20),)
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Short_stay_apartments(),));
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(bottom: 25),
                                                height: 120,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: Appcolor.PrimaryColor2
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Image.asset('assets/pop2.png'),
                                                    Text('Short stay\n apartments',style: TextStyle(color: Colors.white,fontSize: 20),)
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms(),));
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(bottom: 25),
                                                height: 120,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: Appcolor.PrimaryColor2
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Image.asset('assets/pop3.png'),
                                                    Text('Rooms',style: TextStyle(color: Colors.white,fontSize: 20),)
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                          ),
                                        ),
                                      ),
                                  )
                                  );
                                }if(arrname[index].toString()=="Airport\nTransfer") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Airpot_Transfer(),));
                                }if(arrname[index].toString()=="Flights") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Flights(),));
                                }if(arrname[index].toString()=="Car Rental") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Car_Rental(),));
                                }if(arrname[index].toString()=="Translation") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Translation(),));
                                }if(arrname[index].toString()=="Carer") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Carer(),));
                                }if(arrname[index].toString()=="Pharmacies") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Pharmacies(),));
                                }if(arrname[index].toString()=="Find Doctor") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Find_Doctor(),));
                                }if(arrname[index].toString()=="Super markets") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Super_Market(),));
                                }if(arrname[index].toString()=="ATM") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => ATM(),));
                                }if(arrname[index].toString()=="Restaurants") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Restaurants(),));
                                }if(arrname[index].toString()=="Activities") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Choose_your_city(),));
                                }if(arrname[index].toString()=="Gold box") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Gold_Box(),));
                                }if(arrname[index].toString()=="Emergency\nnumbers") {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Emergency_Numbers(),));
                                }
                             });
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => Accommodation(),));
                          },
                          child: Container(
                            // height: 150,
                            // width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Appcolor.PrimaryColor2

                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 100),
                                    child: Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 25,left: 5),
                                    child: Image.asset(imagename[index],),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        );

                      },
                    )
                  ],
                ),
              ),

                ),
              ),
            ),
          );

  }
}

var imagename = ['assets/hotel1.png','assets/taxi1.png','assets/flight.png',
  'assets/car.png','assets/lan.png','assets/care.png',
  'assets/phar.png','assets/medi.png','assets/dr.png',
  'assets/sm.png','assets/atm.png','assets/rest.png',
  'assets/active.png','assets/goldbox.png','assets/enum.png'];

var arrname = ['Accommodation','Airport\nTransfer','Flights',
              'Car Rental','Translation','Carer',
               'Pharmacies','MEDRISM','Find Doctor',
             'Super markets','ATM','Restaurants',
             'Activities','Gold box','Emergency\nnumbers'];
