import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
class Emergency_Numbers extends StatefulWidget {
  const Emergency_Numbers({Key? key}) : super(key: key);

  @override
  State<Emergency_Numbers> createState() => _Emergency_NumbersState();
}

class _Emergency_NumbersState extends State<Emergency_Numbers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Emergency Numbers',style: TextStyle(fontWeight: FontWeight.bold),),
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
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(height: 40,),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   // crossAxisAlignment: CrossAxisAlignment.center,
                            //   children: [
                            //     Image.asset(imagename[index]),
                            //     SizedBox(width: 10,),
                            //     Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text('Departure'),
                            //         Text('4:25 pm',style: TextStyle(fontWeight: FontWeight.w700),),
                            //         SizedBox(height: 25,),
                            //         Text('Estimation'),
                            //         Text('7h 15m',style: TextStyle(fontWeight: FontWeight.w700),),
                            //       ],
                            //     ),
                            //     Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text('Arrive'),
                            //         Text('7:40 pm',style: TextStyle(fontWeight: FontWeight.w700),),
                            //         SizedBox(height: 25,),
                            //         Text('€40.00',style: TextStyle(fontWeight: FontWeight.w700,color: Appcolor.PrimaryColor2)),
                            //         Text('/person',style: TextStyle(fontWeight: FontWeight.w700),)
                            //
                            //       ],
                            //     ),
                            //   ],
                            // ),

                            Text(arrname[index],style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(arr1name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Appcolor.PrimaryColor2,
                                  child:Icon(Icons.phone,color: Colors.white,) ,
                                )
                              ],
                            )
                          ],
                        ),
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
  var arrname = ['General Emergency','CatSalut Respon (Medical Emergency)','Fire Service','Guardia Urbana (Local Police)',
        'Mossos d’Esquadra (Catalan Police Force)','Policia Nacional','Guardia Civil'];

 var arr1name = ['112','061','080','092','112','091','062'];
