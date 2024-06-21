import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:intl/intl.dart';
class Personal_information extends StatefulWidget {
  const Personal_information({Key? key}) : super(key: key);

  @override
  State<Personal_information> createState() => _Personal_informationState();
}

class _Personal_informationState extends State<Personal_information> {

  int isValue = 0;

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Personal information',style: TextStyle(fontWeight: FontWeight.bold)),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                     Stack(
                       children: [
                         Container(
                           height: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: Appcolor.PrimaryColor2,width: 2),
                             shape: BoxShape.circle
                           ),
                         ),
                         Positioned(
                             bottom: -0,
                             left: 190,
                             child: IconButton(onPressed: (){
                             },icon:const Icon(Icons.add_a_photo,color: Appcolor.PrimaryColor2,),))
                       ],
                     ),
                SizedBox(height: 20,),
                Text('Gender',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 0;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color:isValue == 0? Appcolor.PrimaryColor2: Colors.white54
                        ),
                        child: Center(child: Text('Male')),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 1;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color:isValue == 1? Appcolor.PrimaryColor2: Colors.white54,
                         // border: Border.all(color: Colors.black54)
                        ),
                        child: Center(child: Text('Female')),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isValue = 2;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color:isValue == 2? Appcolor.PrimaryColor2: Colors.white54
                        ),
                        child: Center(child: Text('Other')),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    hintText: "Name"
                  ),
                ),
                SizedBox(height: 20,),
                Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Email"
                  ),
                ),
                SizedBox(height: 20,),
                Text('Date of birth',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Date of birth",
                    suffixIcon: Icon(Icons.date_range)
                  ),
                  readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );

                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinput.text = formattedDate; //set output date to TextField value.
                      });
                    }else{
                      print("Date is not selected");
                    }
                  },
                ),
                SizedBox(height: 20,),
                Text('Specialty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Specialty"
                  ),
                ),
                SizedBox(height: 20,),
                Text('Charge',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Charge"
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20,),
                Text('Descriptions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 5,),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Descriptions"
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Appcolor.PrimaryColor2
                  ),
                  child: Center(child: Text('Update',style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
