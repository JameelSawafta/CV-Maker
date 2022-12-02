
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../models/myprovider.dart';
import 'widget/myDrawer.dart';

class Education extends StatelessWidget {
  Education({Key? key}) : super(key: key);


  String schoolName = '';
  String degree = '';
  String fieldOfStudy = '';
  String grade = '';
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.w,
            ),
            Text(
              'Education',
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'School/University Name',
                ),
                onChanged: (value) {
                  schoolName = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).schoolName
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Degree',
                ),
                onChanged: (value) {
                  degree = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).degree
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Field of Study',
                ),
                onChanged: (value) {
                  fieldOfStudy = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).fieldOfStudy
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Grade',
                ),
                onChanged: (value) {
                  grade = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).grade
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                showCursor: false,
                readOnly: true,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Start Date'),
                ),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: _startDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  ).then((date) {
                    _startDate = date!;
                    Provider.of<MyProvider>(context, listen: false)
                        .setStartDateEducation(_startDate!.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).startDateEducation),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                showCursor: false,
                readOnly: true,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('End Date'),

                ),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: _endDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  ).then((date) {
                    _endDate = date!;
                    Provider.of<MyProvider>(context, listen: false)
                        .setEndDateEducation(_endDate!.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).endDateEducation),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String schoolName0 = Provider.of<MyProvider>(context, listen: false).schoolName;
                      String degree0 = Provider.of<MyProvider>(context, listen: false).degree;
                      String fieldOfStudy0 = Provider.of<MyProvider>(context, listen: false).fieldOfStudy;
                      String grade0 = Provider.of<MyProvider>(context, listen: false).grade;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).startDateEducation.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).endDateEducation.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addEducation(schoolName == '' ? schoolName0 : schoolName, degree == '' ? degree0 : degree, fieldOfStudy == '' ? fieldOfStudy0 : fieldOfStudy, grade == '' ? grade0 : grade,_startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushReplacementNamed(context, '/Career');
                    },
                    child: const Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String schoolName0 = Provider.of<MyProvider>(context, listen: false).schoolName;
                      String degree0 = Provider.of<MyProvider>(context, listen: false).degree;
                      String fieldOfStudy0 = Provider.of<MyProvider>(context, listen: false).fieldOfStudy;
                      String grade0 = Provider.of<MyProvider>(context, listen: false).grade;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).startDateEducation.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).endDateEducation.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addEducation(schoolName == '' ? schoolName0 : schoolName, degree == '' ? degree0 : degree, fieldOfStudy == '' ? fieldOfStudy0 : fieldOfStudy, grade == '' ? grade0 : grade,_startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushNamed(context, '/KeySkills');
                    },
                    child: const Text('Next'),
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
    );
  }
}
