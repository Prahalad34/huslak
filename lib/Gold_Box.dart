import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:huslak/Payment.dart';
class Gold_Box extends StatefulWidget {
  const Gold_Box({Key? key}) : super(key: key);

  @override
  State<Gold_Box> createState() => _Gold_BoxState();
}

class _Gold_BoxState extends State<Gold_Box> {

  List options = [
  {'title': 'Car Rental', 'isActive': false},
{'title': 'Hotels', 'isActive': false},
{'title': 'Sort term Apartments', 'isActive': false},
{'title': 'Flights', 'isActive': false},
{'title': 'Restaurants', 'isActive': false},
{'title': 'Pharmacies', 'isActive': false},
{'title': 'ATM & Outdoors', 'isActive': false},
{'title': 'Super Market', 'isActive': false},
    {'title': 'Find Doctor', 'isActive': false},
];
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Gold Box',style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                       Text('Gold box charge €10 per service.',style: TextStyle(color: Appcolor.PrimaryColor2),),
                SizedBox(height: 20,),
                Text('Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Enter your name'
                  ),

                ),
                SizedBox(height: 20,),
                Text('Phone Number',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Enter your number'
                  ),

                ),
                SizedBox(height: 20,),
                Text('Email Id',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Enter your email id'
                  ),

                ),
                SizedBox(height: 20,),
                Text('All Services',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                // ...List.generate(
                //   0,
                //       (index) => InkWell(
                //     customBorder: const CircleBorder(),
                //     onTap: () {
                //       setState(() {
                //         selectedItem = index;
                //       });
                //     },
                //     child: Container(
                //       height: 100,
                //       width: 100,
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //         color: selectedItem == index ? Colors.blue : null,
                //         shape: BoxShape.circle,
                //       ),
                //       child: Text('Car Rental'),
                //     ),
                //   ),
                // ),




                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12.0,
                  children: <Widget>[
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Car Rental",style: TextStyle(color: Colors.white)),
                      selected: _value == 0,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 0 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Hotels",style: TextStyle(color: Colors.white)),
                      selected: _value == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 1 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Sort term Ap..",style: TextStyle(color: Colors.white)),
                      selected: _value == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 2 : null)!;
                        });
                      },
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: ChoiceChip(
                        pressElevation: 0.0,
                        selectedColor: Appcolor.PrimaryColor2,
                        backgroundColor: Colors.grey[100],
                        label: Text("Flights",style: TextStyle(color: Colors.white),),
                        selected: _value == 2,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = (selected ? 2 : null)!;
                          });
                        },
                      ),
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Restaur..",style: TextStyle(color: Colors.white)),
                      selected: _value == 3,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 3 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Pharmacies",style: TextStyle(color: Colors.white)),
                      selected: _value == 4,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 4 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("ATM",style: TextStyle(color: Colors.white)),
                      selected: _value == 5,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 5 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Super Market",style: TextStyle(color: Colors.white)),
                      selected: _value == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 1 : null)!;
                        });
                      },
                    ),
                    ChoiceChip(
                      pressElevation: 0.0,
                      selectedColor: Appcolor.PrimaryColor2,
                      backgroundColor: Colors.grey[100],
                      label: Text("Find Doctor",style: TextStyle(color: Colors.white)),
                      selected: _value == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = (selected ? 1 : null)!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Text('Description',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                SizedBox(height: 8,),
                Container(
                    height: 134,
                    // width: 328,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: TextField(
                        minLines: 10,
                        maxLines: 20,
                        decoration: const InputDecoration(
                            hintText: 'Text here...',
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder()),
                        onChanged: (value) {},

                      ),
                    )
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                  },
                  child: Container(
                      height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Appcolor.PrimaryColor2
                    ),
                    child: Center(child: Text('Payment',style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
  changeState(item) {
    setState(() {
      item['isActive'] = !item['isActive'];
    });
  }
}
