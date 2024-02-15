import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  List<ImageModel> Imagename = [
    new ImageModel(image: 'immunity.png', name: "Immunity\n Boosters",),
    new ImageModel(image: 'debatic.png', name: "Debatic\n Care",),
    new ImageModel(image: 'health.png', name: "Health\n Care",),
    new ImageModel(image: 'hairs.png', name: "Hair\n Care",),
    new ImageModel(image: 'women.png', name: "Women\n Centric",),
    new ImageModel(image: 'skin.png', name: "Skin\n Care",),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu_rounded,size: 30,color: Colors.black,),
                  Row(
                    children: [
                      Icon(Icons.search,size: 30,color: Colors.black,),
                      SizedBox(width: 10,),
                      Icon(FontAwesomeIcons.heart,color: Colors.black,),
                      SizedBox(width: 10,),
                      Icon(Icons.card_travel,size: 30,color: Colors.black,)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Imagename.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/images/" + Imagename[index].image),
                        ),
                        Text(Imagename[index].name,textAlign: TextAlign.center,),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Container(
                height: 140,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                   image: DecorationImage(
                     image: AssetImage("assets/images/shopping.png"),
                     fit: BoxFit.fill)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:10,top:3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("Online Shopping",style: TextStyle(color: Colors.white,
                          fontSize:22,fontWeight: FontWeight.w600,fontFamily:'Poppins'),),
                      Text("Hurry Up!! 30% offer for all products",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 25 ,),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton.icon(onPressed:(){},
                        icon: Icon(Icons.shopping_cart,size: 15,),
                        label: Text("SHOP NOW"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize:10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Deals Of The Week",style: TextStyle(color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.w500,fontFamily: 'poppins'),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("View All",style: TextStyle(color: Colors.black,
                          fontSize: 15,fontFamily: 'poppins'),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ImageModel{
  String image = '';
  String name = '';
  ImageModel({required this.image,required this.name});

}
