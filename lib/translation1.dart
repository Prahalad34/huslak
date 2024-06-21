import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
class translation1 extends StatefulWidget {
  const translation1({Key? key}) : super(key: key);

  @override
  State<translation1> createState() => _translation1State();
}

class _translation1State extends State<translation1> {
  @override
  Widget build(BuildContext context) {
    AlertDialog _alertDialog=AlertDialog(
      titlePadding: EdgeInsets.all(0.0),
      title: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Appcolor.PrimaryColor2,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 20,),
              Text("Availability",style: TextStyle(color: Colors.white),),
              SizedBox(width: 100,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.clear,color: Colors.white,))
            ],
          )),
      content: Container(
        height: 300,
        width: 560,
        decoration: BoxDecoration(
          // border: Border(top: BorderSide(color: Appcolor.PrimaryColor2,width: 6))
        ),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sunday'),
                  // VerticalDivider(width: 20,thickness: 1,),
                  Text('Not available')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Monday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('11:00 AM - 12:00 AM')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tuesday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('09:45 AM - 10:45 AM')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wednesday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('10:00 AM - 11:00 AM')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Thursday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('Not available')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('10:40 AM - 11:40 AM')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Saturday'),
                  //   VerticalDivider(width: 20,thickness: 1,),
                  Text('10:00 AM - 11:00 AM')
                ],
              ),
            ),
            Divider(height: 20,thickness: 1,)
          ],
        ),
      ),
    );
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
                    Image.asset('assets/l.png'),
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
                          Text('Phyllis Pullman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('Available',style: TextStyle(color: Appcolor.PrimaryColor4),)
                        ],
                      ),
                      Text('€4.00/h',style: TextStyle(color: Appcolor.PrimaryColor2)),
                      Row(
                        children: [
                          Icon(Icons.access_alarm,color: Appcolor.PrimaryColor2,),
                         TextButton(
                           onPressed: (){
                             showDialog(context: context, builder: (BuildContext context){
                               return _alertDialog;

                             });
                           },
                             child: Text('Availability',style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',style: TextStyle(fontSize: 12.5),),
                      SizedBox(height: 25,),
                      Text('Known Languages'),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/kl.png'),
                          Image.asset('assets/kl1.png'),
                          Image.asset('assets/kl2.png'),
                          Image.asset('assets/kl3.png'),
                          Image.asset('assets/kl4.png')
                        ],
                      ),
                     SizedBox(height: 80,),
                      Container(
                        height: 60,
                        // width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Appcolor.PrimaryColor2

                        ),
                        child: Center(child: Text('Book Now',style: TextStyle(color: Colors.white),)),
                      ),
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
