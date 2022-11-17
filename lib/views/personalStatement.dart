import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project2/views/widget/myDrawer.dart';


import 'package:flutter/material.dart';

class PersonalStatement extends StatelessWidget {
  const PersonalStatement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text('Personal Statement'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Personal Statement',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Write a short paragraph about yourself and your career goals.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  maxLines: 2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write here...',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
      ),
    );
  }
}
