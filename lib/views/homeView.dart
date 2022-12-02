import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';


import 'widget/drawerItem.dart';
import 'widget/myDrawer.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  String fullName = '';
  String email = '';
  String phone = '';
  String address = '';

  DateTime dateOfBirth = DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Info'),
          backgroundColor: Color(0xff05172a),
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.w,
                ),
                Text(
                  'Contact Information',
                  style: TextStyle(
                    fontSize: 20.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    fullName = value;
                  },
                  controller: TextEditingController(
                      text: Provider.of<MyProvider>(context).fullName
                  ),

                ),
                SizedBox(height: 20.w,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                  controller: TextEditingController(
                      text: Provider.of<MyProvider>(context).email
                  ),
                ),
                SizedBox(height: 20.w,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    phone = value;
                  },
                  controller: TextEditingController(
                      text: Provider.of<MyProvider>(context).phone
                  ),
                ),
                SizedBox(height: 20.w,),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    address = value;
                  },
                  controller: TextEditingController(
                      text: Provider.of<MyProvider>(context).address
                  ),
                ),
                SizedBox(height: 20.w,),
                Container(
                  child: TextField(
                    showCursor: false,
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Date of Birth'),

                    ),
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: dateOfBirth,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      ).then((date) {
                        dateOfBirth = date!;
                          Provider.of<MyProvider>(context, listen: false).setDateOfBirth(date!.toString().substring(0, 10));
                      });
                    },
                    controller: TextEditingController(
                        text: Provider.of<MyProvider>(context).dateOfBirth),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(height: 20.w,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                        onPressed: () {
                          String fullName0 = Provider.of<MyProvider>(context, listen: false).fullName;
                          String email0 = Provider.of<MyProvider>(context, listen: false).email;
                          String phone0 = Provider.of<MyProvider>(context, listen: false).phone;
                          String address0 = Provider.of<MyProvider>(context, listen: false).address;
                          String dateOfBirth0 = Provider.of<MyProvider>(context, listen: false).dateOfBirth.toString().substring(0, 10);
                          Provider.of<MyProvider>(context, listen: false).addContactInfo(fullName==''? fullName0:fullName, email==''? email0:email, phone==''? phone0:phone, address==''? address0:address, dateOfBirth.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10)? dateOfBirth0:dateOfBirth.toString().substring(0, 10));

                          Navigator.pushReplacementNamed(context, '/PersonalStatement');



                          },
                        child: const Text('Next'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff05172a),
                        ),
                      ),
                ),
              ],
            ),
          ),

        )
    );
  }
}

