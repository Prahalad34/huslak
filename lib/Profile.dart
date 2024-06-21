import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:huslak/Booking_history.dart';
import 'package:huslak/Personal_information.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Personal_information(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                          backgroundColor: Colors.blue.shade50,
                          child: Image.asset('assets/GearWide.png',color: Appcolor.PrimaryColor1,)),
                      SizedBox(width: 15,),
                      Expanded(
                      child:Text('Personal information',style: TextStyle(fontSize: 18),)),
                      Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Booking_history(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 22,
                          backgroundColor:  Colors.blue.shade50,
                          child: Icon(Icons.watch_later_outlined,color: Appcolor.PrimaryColor1,)),
                      SizedBox(width: 15,),
                      Expanded(
                          child:Text('Booking history',style: TextStyle(fontSize: 18),)),
                      Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor:  Colors.blue.shade50,
                        child: Image.asset('assets/share.png',color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Share',style: TextStyle(fontSize: 18),)),
                    Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor:  Colors.blue.shade50,
                        child:Icon(Icons.chat_outlined,color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Suggest service',style: TextStyle(fontSize: 18),)),
                    Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor:  Colors.blue.shade50,
                        child:Image.asset('assets/Group.png',color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Contact us',style: TextStyle(fontSize: 18),)),
                    Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor:  Colors.blue.shade50,
                        child:Icon(Icons.privacy_tip_outlined,color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Privacy policy',style: TextStyle(fontSize: 18),)),
                    Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue.shade50,
                        child:Icon(Icons.library_books,color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Terms of use',style: TextStyle(fontSize: 18),)),
                    Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.blue.shade50,
                        child:Icon(Icons.logout,color: Appcolor.PrimaryColor1,)),
                    SizedBox(width: 15,),
                    Expanded(
                        child:Text('Logout',style: TextStyle(fontSize: 18,color: Colors.red),)),
                   // Icon(Icons.keyboard_arrow_right,color: Appcolor.PrimaryColor2,)
                  ],
                ),
                Divider(height: 40,thickness: 1,),
                Text('Follow us :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                SizedBox(height: 15,),
                Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(Icons.facebook)),
                    SizedBox(width: 18,),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue.shade50,
                        child: Image.asset('assets/twi.png')),
                    SizedBox(width: 18,),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red.shade50,
                        child: Image.asset('assets/insta.png')),
                    SizedBox(width: 18,),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green.shade100,
                        child: Image.asset('assets/logo1.png'))
                        ]
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
