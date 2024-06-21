import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {


  bool _showProgress = true;

  @override
  void initState() {
    super.initState();
    // Set the timer to hide the CircularProgressIndicator after 5 seconds
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showProgress = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ScaffoldGradientBackground(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Appcolor.PrimaryColor8,
              Appcolor.PrimaryColor9

            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Hotels', style: TextStyle(fontWeight: FontWeight.bold),),
            titleSpacing: -5,

          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    _showProgress ? Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ) :
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(imagename[index], height: 130,
                                    width: 130,
                                    fit: BoxFit.cover,),
                                  SizedBox(width: 8,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(arrname[index], style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                        Text(arr1name[index],
                                          style: TextStyle(fontSize: 11),),
                                        SizedBox(height: 5,),
                                        Text(arr2name[index], style: TextStyle(
                                            color: Appcolor.PrimaryColor2,
                                            fontSize: 18)),
                                        SizedBox(height: 5,),
                                        Text(arr3name[index]),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
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
//   void getData() async {
//     var uri = "https://gopray.com.au/wp-prod/wp-admin/admin-ajax.php?action=nearby_mosques&max_results=20&lat=-33.865143&lon=151.2099";
//     final response = await http.get(Uri.parse(uri));
//     debugPrint("Status code is: ${response.statusCode}");
//     debugPrint("Status code is: ${response.statusCode}");
//
//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       setState(() {
//         debugPrint(jsonData.toString());
//         data = jsonData as List;
//       });
//       debugPrint(data.length.toString());
//     }
//   }
// }
//

var imagename = ['assets/hotels.png','assets/hotels1.png','assets/hotels2.png','assets/hotels3.png','assets/hotels4.png'];

var arrname = ['NH Collection Gran Hotel','NH Sants Barcelona','NH Collection Constanza','NH Collection Pódium','Hotel Sofia Barcelona'];

var arr1name = ['07529, Balearic Islands, barcelona Spain','14830, La Rioja, barcelona Spain','2000, Guipúzcoa, barcelona Spain',
          '13193, Ciudad Real, barcelona Spain','37511, Salamanca, barcelona Spain'];

var arr2name = ['€40.00/d','€35.00/d','€45.00/d','€34.00/d','€38.00/d'];

var arr3name =['500 mtr','1 km','2 km','3.5 km','5 km'];
