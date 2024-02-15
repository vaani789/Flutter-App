import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatefulWidget {

  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  String dropdownvalue = 'item1';
  var items = ['item1','item2','item3','item4','item5','item6',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Address'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('First Name*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(left: 10,right: 10,top: 2),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Last Name*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Country*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(left: 10,right: 10,top: 2),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: DropdownButton(isExpanded: true,
              underline: SizedBox(),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue){
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Street Address*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Street Address 2(Optional)',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('City*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('State*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Zip Code*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 12),
            child: Text('Phone Number*',style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,right: 10,top: 2),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(6))),
                ),
              )
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 190,
                margin: EdgeInsets.only(left:10,bottom: 20),
                child: TextButton(
                  child: Text('Delete',style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4));
                  }),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  ), onPressed: () { },
                ),
              ),
              Container(
                width: 190,
                margin: EdgeInsets.only(bottom: 10),
                child: TextButton(
                  child: Text('Add Address',style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4));
                  }),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  ), onPressed: () { },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
