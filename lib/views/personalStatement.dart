import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project2/views/widget/myDrawer.dart';
import 'package:provider/provider.dart';
import 'package:project2/models/myprovider.dart';


import 'package:flutter/material.dart';

class PersonalStatement extends StatelessWidget {
  PersonalStatement({Key? key}) : super(key: key);

  String personalStatement = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title:  Text('Personal Statement'),
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
                'Personal Statement',
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 20.w,
              ),
               Text(
                'Write a short paragraph about yourself and your career goals.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
               SizedBox(
                height: 20.w,
              ),
              Container(
                child: TextField(
                  maxLines: 2,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Write here...',
                  ),
                  onChanged: (value) {
                    personalStatement = value;
                  },
                  controller: TextEditingController(
                      text: Provider.of<MyProvider>(context).personalStatement
                  ),
                ),
              ),
               SizedBox(
                height: 20.w,
              ),
              Container(
                margin:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        String personalStatement0 = Provider.of<MyProvider>(context,listen: false).personalStatement;
                        Provider.of<MyProvider>(context, listen: false).setPersonalStatement(personalStatement == '' ? personalStatement0 : personalStatement);
                        Navigator.pushReplacementNamed(context, '/ContactInfo');
                      },
                      child:  Text('Back'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff05172a),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String personalStatement0 = Provider.of<MyProvider>(context,listen: false).personalStatement;
                        Provider.of<MyProvider>(context, listen: false).setPersonalStatement(personalStatement == '' ? personalStatement0 : personalStatement);
                        Navigator.pushReplacementNamed(context, '/Career');
                      },
                      child:  Text('Next'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff05172a),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
