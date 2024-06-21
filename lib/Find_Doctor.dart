import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:huslak/Find_Doctor1.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Find_Doctor extends StatefulWidget {
  const Find_Doctor({Key? key}) : super(key: key);

  @override
  State<Find_Doctor> createState() => _Find_DoctorState();
}

class _Find_DoctorState extends State<Find_Doctor> {
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
        title: Text('Find Doctor',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
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
                        hintText: 'Search for specialist'
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
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Find_Doctor1(),));
                                  },
                                  child: Image.asset(imagename[index],height: 125,width: 125,fit: BoxFit.cover)),
                              SizedBox(width: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                                  Text(arr1name[index],style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 120,
                                        // color: Colors.yellow.shade100,
                                        child: RatingBar(
                                          initialRating: 3,
                                          // Set the initial rating value
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          ratingWidget: RatingWidget(
                                            full: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            half: Icon(Icons.star_half),
                                            empty: Icon(Icons.star_border),
                                          ),
                                          itemSize: 20.0,
                                          // Adjust the size of the rating stars
                                          itemPadding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                          onRatingUpdate: (rating) {
                                            // Handle the rating update if needed
                                          },
                                        ),
                                      ),
                                      Text(arr2name[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),)
                                    ],
                                  ),
                                   SizedBox(height: 10,),
                                   Text(arr3name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 20)),
                                ],
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

var imagename = ['assets/fd.png','assets/fd1.png','assets/fd2.png','assets/fd3.png','assets/fd4.png'];

var arrname = ['Dr Jamie Trevelyan','Dr Derrick Milton','Dr Alva Evans','Dr Vivian Reynolds','Dr Queena Euphemia'];

 var arr1name = ['Cardiologists','Orthopedics','Podiatrists','Cardiologist','Podiatrists'];

 var arr2name = ['15 Opinions','12 Opinions','15 Opinions','15 Opinions','15 Opinions'];

 var arr3name = ['€5.50','€4.80','€5.70','€6.00','€6.00'];
