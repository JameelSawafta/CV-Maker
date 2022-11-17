import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../repository/dataAPI.dart';
import '../viewModels/homeViewModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/drawerItem.dart';
import 'widget/myDrawer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var data = HomeViewModel(dataRepository: DataAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.title),
          backgroundColor: Color(0xff05172a),
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 20.w,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 20.w,),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 20.w,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 20.w,),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 20.w,),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff05172a),
                    ),
                    onPressed: () {

                    },
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }
}

