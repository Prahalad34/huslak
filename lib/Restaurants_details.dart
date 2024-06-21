import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
class Restaurants_details extends StatefulWidget {
  const Restaurants_details({Key? key}) : super(key: key);

  @override
  State<Restaurants_details> createState() => _Restaurants_detailsState();
}

class _Restaurants_detailsState extends State<Restaurants_details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Stack(
                   children: [
                     Image.asset('assets/rd1.png'),
                     Padding(
                       padding: const EdgeInsets.only(top: 15,left: 15),
                       child: CircleAvatar(
                         radius: 18,
                         backgroundColor: Colors.white,
                         child:  Icon(Icons.arrow_back,color: Colors.black,),
                       ),
                     )
                   ],
                 ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Gasa Amalia',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('15 mins')
                        ],
                      ),
                      Text('Concepcion Public Market, Barcelona, Spain'),
                      SizedBox(height: 20,),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',style: TextStyle(fontSize: 12.5),),
                      SizedBox(height: 40,),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Image.asset(imagename[index],fit: BoxFit.cover),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(arrname[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                        Text('Lorem ipsum dolor sit'),
                                        SizedBox(height: 6,),
                                        Text(arr1name[index],style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor2),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                      },)
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

var imagename = ['assets/rdd1.png','assets/rdd2.png','assets/rdd3.png','assets/rdd4.png','assets/rdd5.png'];

var arrname = ['Cremosa de Txangurro','Savoury Macaron','Forest Mushroom Tart','Brie Walnut Ice Cream','Maple Ash Ling Cod'];

var arr1name = ['€4.50','€5.00','€6.50','€5.20','€4.00'];
