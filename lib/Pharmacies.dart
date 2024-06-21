import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Appcolor.dart';
class Pharmacies extends StatefulWidget {
  const Pharmacies({Key? key}) : super(key: key);

  @override
  State<Pharmacies> createState() => _PharmaciesState();
}

class _PharmaciesState extends State<Pharmacies> {
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
        title: Text('Pharmacies',style: TextStyle(fontWeight: FontWeight.bold)),
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
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(Icons.search,color: Appcolor.PrimaryColor2,),
                        hintText: 'Search for pharmacy'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                              Image.asset(imagename[index],height: 115,width: 130,fit: BoxFit.cover),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(arrname[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                                    SizedBox(height: 5,),
                                    Text(arr1name[index],style: TextStyle(fontSize: 11),),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,color: Appcolor.PrimaryColor2,size: 20,),
                                        Text(arr2name[index],style: TextStyle(color: Appcolor.PrimaryColor2,fontSize: 18)),
                                      ],
                                    ),
                                    // SizedBox(height: 5,),
                                    // Text(arr3name[index],style: TextStyle(fontWeight: FontWeight.w700,)),
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

 var imagename = ['assets/pha1.png','assets/pha2.png','assets/pha3.png','assets/pha4.png','assets/pha5.png'];

 var arrname = ['Farmacia de la Estación de','Farmacia Nadal','Farmàcia La Pedrera','Farmàcia Urquinaona','Centre Despecifics'];

 var arr1name = ['Estación de Sants Barcelona Plaça Dels\n Països Calatans, 08014 Barcelona, Spain','La Rambla, 121, s/n, 08002 Barcelona,\n Spain',
      'Passeig de Gràcia, 90, 08008 Barcelona,\n Spain','Pl. d Urquinaona, 8, 08010 Barcelona,\n Spain','Gran Via de les Corts Catalanes, 08010\n Barcelona, Spain'];

 var arr2name = ['500 mtr','600 mtr','800 mtr','1 km','1.2 km'];
