import 'package:flutter/material.dart';
import 'package:huslak/Restaurants_details.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
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
        title: Text('Restaurants',style: TextStyle(fontWeight: FontWeight.bold),),
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
                        hintText: 'Search for Restaurants'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2/2.5
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount:6,
                  itemBuilder: (BuildContext ctx, index){
                    return Container(
                      // height: 150,
                      // width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:Colors.white
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurants_details(),));
                                },
                                  child: Image.asset(imagename[index],fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,),
                              child: Text(arr1name[index],style: TextStyle(fontSize: 10),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,bottom: 1),
                              child: Text(arr2name[index],),
                            )
                          ],
                        ),


                    );

                  },
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/rest1.png','assets/rest2.png','assets/rest3.png','assets/rest4.png','assets/rest1.png','assets/rest2.png'];

 var arrname = ['Gasa Amalia','Con Gracia','RAO Restaurant','Viana Barcelona','Gasa Amalia','Con Gracia'];

 var arr1name = ['Concepcion Public Market','Martinez de la Rosa Street','Carrer de les Sitges','del Vidre Barcelona','Concepcion Public Market','Martinez de la Rosa Street'];

var arr2name = ['200 mtr','700 mtr','900 mtr','1 km','200 mtr','700 mtr'];
