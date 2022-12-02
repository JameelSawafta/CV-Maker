import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'widget/myDrawer.dart';

class Career extends StatelessWidget {
  Career({Key? key}) : super(key: key);

  String companyName = '';
  String jobTitle = '';
  String companyDetails = '';
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Career'),
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
              'Career',
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.w,
            ),

            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Company Name',
                ),
                onChanged: (value) {
                  companyName = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).companyName
                ),
              ),
            ),
             SizedBox(
              height: 20.w,
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Job Title',
                ),
                onChanged: (value) {
                  jobTitle = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).jobTitle
                ),
              ),
            ),
             SizedBox(
              height: 20.w,
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Details',
                ),
                onChanged: (value) {
                  companyDetails = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).companyDetails
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
                          .setStartDateCareer(date!.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).startDateCareer),
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
                          .setEndDateCareer(date!.toString().substring(0, 10));
                  });
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).endDateCareer),
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
                      String companyName0 = Provider.of<MyProvider>(context, listen: false).companyName;
                      String jobTitle0 = Provider.of<MyProvider>(context, listen: false).jobTitle;
                      String companyDetails0 = Provider.of<MyProvider>(context, listen: false).companyDetails;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).startDateCareer.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).endDateCareer.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addCareer(companyName == '' ? companyName0 : companyName, jobTitle == '' ? jobTitle0 : jobTitle, companyDetails == '' ? companyDetails0 : companyDetails, _startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushReplacementNamed(context, '/PersonalStatement');
                    },
                    child:  Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String companyName0 = Provider.of<MyProvider>(context, listen: false).companyName;
                      String jobTitle0 = Provider.of<MyProvider>(context, listen: false).jobTitle;
                      String companyDetails0 = Provider.of<MyProvider>(context, listen: false).companyDetails;
                      String startDate0 = Provider.of<MyProvider>(context, listen: false).startDateCareer.toString().substring(0, 10);
                      String endDate0 = Provider.of<MyProvider>(context, listen: false).endDateCareer.toString().substring(0, 10);
                      Provider.of<MyProvider>(context, listen: false)
                          .addCareer(companyName == '' ? companyName0 : companyName, jobTitle == '' ? jobTitle0 : jobTitle, companyDetails == '' ? companyDetails0 : companyDetails, _startDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? startDate0 : _startDate.toString().substring(0, 10), _endDate.toString().substring(0, 10) == DateTime.now().toString().substring(0, 10) ? endDate0 : _endDate.toString().substring(0, 10));
                      Navigator.pushReplacementNamed(context, '/Education');
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
