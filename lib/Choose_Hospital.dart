import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Choose_Hospital extends StatefulWidget {
  const Choose_Hospital({Key? key}) : super(key: key);

  @override
  State<Choose_Hospital> createState() => _Choose_HospitalState();
}

class _Choose_HospitalState extends State<Choose_Hospital> {
  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Choose Hospital',style: TextStyle(fontWeight: FontWeight.w700),)),
        titleSpacing: 50,
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
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(Icons.search,color: Appcolor.PrimaryColor2,),
                        hintText: 'Search for city'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2/2.5
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount:12 ,
                  itemBuilder: (BuildContext ctx, index){
                    return Container(
                      // height: 150,
                      // width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Appcolor.PrimaryColor3
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 5),
                            child: Image.asset(imagename[index],height: 50,width: 100,),
                          ),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(top: 75,left: 50),
                            child: Text('Details',style: TextStyle(color: Appcolor.PrimaryColor1),),
                          ))
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

var imagename = ['assets/hos.png','assets/hos1.png','assets/hos.png','assets/hos1.png','assets/hos.png','assets/hos1.png',
  'assets/hos.png','assets/hos1.png','assets/hos.png','assets/hos1.png','assets/hos.png','assets/hos1.png'];
