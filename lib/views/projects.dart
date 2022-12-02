import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../models/myprovider.dart';
import 'widget/myDrawer.dart';

class Projects extends StatelessWidget {
  Projects({Key? key}) : super(key: key);

  String projectTitle = '';
  String projectDetails = '';
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
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
              'Projects',
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
                  labelText: 'Project Title',
                ),
                onChanged: (value) {
                  projectTitle = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).projectTitle),
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
                  labelText: 'Details',
                ),
                onChanged: (value) {
                  projectDetails = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).projectDetails),
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
                        .setProjectStartDate(_startDate.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).projectStartDate),
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
                        .setProjectEndDate(_endDate.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).projectEndDate),
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
                      String projectTitle0 = Provider.of<MyProvider>(context, listen: false).projectTitle;
                      String projectDetails0 = Provider.of<MyProvider>(context, listen: false).projectDetails;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).projectStartDate.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).projectEndDate.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addProject(projectTitle == '' ? projectTitle0 : projectTitle, projectDetails == '' ? projectDetails0 : projectDetails, _startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushReplacementNamed(context, '/KeySkills');
                    },
                    child:  Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String projectTitle0 = Provider.of<MyProvider>(context, listen: false).projectTitle;
                      String projectDetails0 = Provider.of<MyProvider>(context, listen: false).projectDetails;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).projectStartDate.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).projectEndDate.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addProject(projectTitle == '' ? projectTitle0 : projectTitle, projectDetails == '' ? projectDetails0 : projectDetails, _startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushReplacementNamed(context, '/Interests');
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
    );

  }
}
