import 'package:flutter/material.dart';
import 'package:huslak/Carer1.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Carer extends StatefulWidget {
  const Carer({Key? key}) : super(key: key);

  @override
  State<Carer> createState() => _CarerState();
}

class _CarerState extends State<Carer> {
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
        title: Text('Carer',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
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
                      // height: 350,
                      // width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Carer1(),));
                              },
                              child: Image.asset(imagename[index],fit: BoxFit.cover)),

                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 12),
                            child: Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(arr1name[index],style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor2),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text('Known Languages'),
                          ),
                          SizedBox(height: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/kl.png',height: 20,width: 20,),
                              Image.asset('assets/kl1.png',height: 20,width: 20,),
                              Image.asset('assets/kl2.png',height: 20,width: 20,),
                              Image.asset('assets/kl3.png',height: 20,width: 20,),
                              Image.asset('assets/kl4.png',height: 20,width: 20,)
                            ],
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

var imagename = ['assets/care1.png','assets/care2.png','assets/care3.png','assets/care4.png','assets/care5.png','assets/care6.png'];

var arrname = ['Bernice Houston','Suzanne Patience','Deirdre Bessie','Janet Timothy','Virginia Jonathan','Norma Sophy'];

var arr1name = ['€5.00/h','€5.50/h','€6.00/h','€6.70/h','€7.00/h','€7.50/h','€4.50/h'];

