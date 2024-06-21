import 'package:flutter/material.dart';
import 'package:huslak/Activities.dart';
import 'package:huslak/Appcolor.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Choose_your_city extends StatefulWidget {
  const Choose_your_city({Key? key}) : super(key: key);

  @override
  State<Choose_your_city> createState() => _Choose_your_cityState();
}

class _Choose_your_cityState extends State<Choose_your_city> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ScaffoldGradientBackground(
      gradient: LinearGradient(
        // begin: Alignment.bottomLeft,
        // end: Alignment.topRight,
        colors: [
          Colors.white,
          Colors.green.shade100,
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Choose your city',style: TextStyle(fontWeight: FontWeight.bold),),
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
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5/2
                    ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount:12 ,
                  itemBuilder: (BuildContext ctx, index){
                      return InkWell(
                        onTap: (){
                          setState((){
                            if(arrname[index].toString()=="Barcelona") {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Activities(),));
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // color: Colors.lightBlue,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(imagename[index]),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(top: 75),
                                child: Text(arrname[index],style: TextStyle(color: Colors.white),),
                              ))
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
    ));
  }
}

var imagename = ['assets/loca.png','assets/loca7.png','assets/loca2.png','assets/loca3.png','assets/loca4.png','assets/loca5.png',
  'assets/loca.png','assets/loca7.png','assets/loca2.png','assets/loca3.png','assets/loca4.png','assets/loca5.png'];

var arrname = ['Barcelona','Brussels','Cape town','Copenhagen','Helsinki','Lisbon',
  'Barcelona','Brussels','Cape town','Copenhagen','Helsinki','Lisbon'];
