import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
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
                    Image.asset('assets/act.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child:  Icon(Icons.arrow_back,color: Colors.black,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 180,left: 15),
                      child: Text('Barcelona\n Spain',style: TextStyle(color: Colors.white),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 240),
                      // height: 730,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Activities',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                            SizedBox(height: 10,),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Container(
                                    //color: Colors.white,
                                    margin: EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(imagename[index],height: 150,width: 150,),
                                            SizedBox(width: 8,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),),
                                                 SizedBox(height: 10,),
                                                 Text('A UNESCO World Heritage Site in Barcelona and experience a cheerful day with your loved ones in the dazzling vicinity',style: TextStyle(fontSize: 11),),
                                                SizedBox(height: 12,),
                                                 Text(arr1name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 16),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                            },)
                          ],
                        ),
                      ),
                    )
                  ],
                ),




              ],
            ),
          ),
        ),
      ),
    ));
  }
}

var imagename = ['assets/act1.png','assets/act2.png','assets/act3.png'];

var arrname = ['Park Guell, Barcelona','Casa Mila, Barcelona','Aquarium, Barcelona'];

var arr1name = ['€9.02','€22.78','€21.75'];
