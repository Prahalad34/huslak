import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:selectable_container/selectable_container.dart';

import 'Login.dart';
class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {



 bool _userSelected = false;

 bool _vendorSelected = false;
 


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           body: SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.all(20),
               child: SizedBox(
                 width: double.infinity,
                 child: Column(
                   children: [
                     SizedBox(height: 40,),
                     Text('Please select ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                     SizedBox(height: 80,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       //  // Icon(Icons.check_circle,color: selectedTool == int ? Colors.green : Colors.white,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            _userSelected = true;
                            _vendorSelected = false;
                          });
                        },
                        child: Container(
                                 height: 210,
                                 width: 140,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(6),
                                     border:Border.all(color: _userSelected ? Appcolor.PrimaryColor6 : Colors.black12)
                                 ),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 100,top: 10),
                                       child: _userSelected ? Icon(Icons.check_circle,color: Appcolor.PrimaryColor6
                                       ) :
                                           Icon(Icons.circle,color: Appcolor.PrimaryColor7,)
                                     ),
                                    // SizedBox(height: 20,),
                                     Image.asset('assets/boy.png',height: 100,width: 100,),
                                     SizedBox(height: 15,),
                                     Text('User',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)
                                   ],
                                 ),
                               ),
                      ),


                         SizedBox(width: 25,),
                         InkWell(
                           onTap: (){
                             setState(() {
                               _vendorSelected = true;
                               _userSelected = false;
                             });
                           },
                           child: Container(
                               height: 210,
                               width: 140,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(6),
                                   border:Border.all(color: _vendorSelected ? Appcolor.PrimaryColor6 : Colors.black12)
                               ),
                               child: Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 100,top: 10),
                                     child: _vendorSelected ? Icon(Icons.check_circle,color: Appcolor.PrimaryColor6
                                     ) :
                                     Icon(Icons.circle,color: Appcolor.PrimaryColor7,)
                                   ),
                                  // SizedBox(height: 20,),
                                   Image.asset('assets/shop.png',height: 100,width: 100,),
                                   SizedBox(height: 15,),
                                   Text('Vendor',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)
                                 ],
                               ),
                             ),
                         ),
                       ],
                     ),
                     SizedBox(height: 20,),
                     Text(
                       _userSelected ? 'Selected login type: User' : _vendorSelected ? 'Selected login type: Vendor' : '',
                       style: TextStyle(fontSize: 16),
                     ),
                 SizedBox(height: 100,),
                 InkWell(
                   onTap: (){
                     if( (_userSelected || _vendorSelected)){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                   }
  },
                   child: Container(
                     height: 60,
                     // width: 150,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                       color: (_userSelected || _vendorSelected) ? Appcolor.PrimaryColor2 : Colors.grey,

                     ),
                     child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                   ),
                 )
                   ],
                 ),
               ),
             ),
           ),
      ),
    );
  }
}
