import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';
import '../repository/sql_helper.dart';
import 'widget/myDrawer.dart';

class References extends StatelessWidget {
  References({Key? key}) : super(key: key);

  String referenceName = '';
  String referenceJobTitle = '';
  String referenceCompany = '';
  String referencePhone = '';
  String referenceEmail = '';

  SqlHelper sqlHelper = SqlHelper();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('References'),
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
              'References',
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
                  labelText: 'Reference Name',
                ),
                onChanged: (value) {
                  referenceName = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).referenceName
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
                  labelText: 'Their Job Title',
                ),
                onChanged: (value) {
                  referenceJobTitle = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).referenceJobTitle
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
                  labelText: 'Their Company/Employer',
                ),
                onChanged: (value) {
                  referenceCompany = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).referenceCompany
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
                  labelText: 'Their Phone Number',
                ),
                onChanged: (value) {
                  referencePhone = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).referencePhone
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
                  labelText: 'Their Email Address',
                ),
                onChanged: (value) {
                  referenceEmail = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).referenceEmail
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
                      String referenceName0 =  Provider.of<MyProvider>(context, listen: false).referenceName;
                      String referenceJobTitle0 = Provider.of<MyProvider>(context, listen: false).referenceJobTitle;
                      String referenceCompany0 = Provider.of<MyProvider>(context, listen: false).referenceCompany;
                      String referencePhone0 = Provider.of<MyProvider>(context, listen: false).referencePhone;
                      String referenceEmail0 = Provider.of<MyProvider>(context, listen: false).referenceEmail;
                      Provider.of<MyProvider>(context, listen: false)
                          .addReference(referenceName == '' ? referenceName0 : referenceName, referenceJobTitle == '' ? referenceJobTitle0 : referenceJobTitle, referenceCompany == '' ? referenceCompany0 : referenceCompany, referencePhone == '' ? referencePhone0 : referencePhone, referenceEmail == '' ? referenceEmail0 : referenceEmail);
                      Navigator.pushReplacementNamed(context, '/Interests');
                    },
                    child:  Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      String referenceName0 = Provider.of<MyProvider>(context, listen: false).referenceName;
                      String referenceJobTitle0 = Provider.of<MyProvider>(context, listen: false).referenceJobTitle;
                      String referenceCompany0 = Provider.of<MyProvider>(context, listen: false).referenceCompany;
                      String referencePhone0 = Provider.of<MyProvider>(context, listen: false).referencePhone;
                      String referenceEmail0 = Provider.of<MyProvider>(context, listen: false).referenceEmail;
                      Provider.of<MyProvider>(context, listen: false)
                          .addReference(referenceName == '' ? referenceName0 : referenceName, referenceJobTitle == '' ? referenceJobTitle0 : referenceJobTitle, referenceCompany == '' ? referenceCompany0 : referenceCompany, referencePhone == '' ? referencePhone0 : referencePhone, referenceEmail == '' ? referenceEmail0 : referenceEmail);


                      try {
                        await sqlHelper.insertData('test',
                            {
                              'id': 1,
                              'fullName' : Provider.of<MyProvider>(context, listen: false).fullName,
                              'email' : Provider.of<MyProvider>(context, listen: false).email,
                              'phone' : Provider.of<MyProvider>(context, listen: false).phone,
                              'address' : Provider.of<MyProvider>(context, listen: false).address,
                              'dateOfBirth' : Provider.of<MyProvider>(context, listen: false).dateOfBirth,
                              'personalStatement' : Provider.of<MyProvider>(context, listen: false).personalStatement,
                              'companyName' : Provider.of<MyProvider>(context, listen: false).companyName,
                              'jobTitle' : Provider.of<MyProvider>(context, listen: false).jobTitle,
                              'companyDetails' : Provider.of<MyProvider>(context, listen: false).companyDetails,
                              'startDateCareer' : Provider.of<MyProvider>(context, listen: false).startDateCareer,
                              'endDateCareer' : Provider.of<MyProvider>(context, listen: false).endDateCareer,
                              'schoolName' : Provider.of<MyProvider>(context, listen: false).schoolName,
                              'degree' : Provider.of<MyProvider>(context, listen: false).degree,
                              'fieldOfStudy' : Provider.of<MyProvider>(context, listen: false).fieldOfStudy,
                              'grade' : Provider.of<MyProvider>(context, listen: false).grade,
                              'startDateEducation' : Provider.of<MyProvider>(context, listen: false).startDateEducation,
                              'endDateEducation' : Provider.of<MyProvider>(context, listen: false).endDateEducation,
                              'keySkills' : Provider.of<MyProvider>(context, listen: false).keySkills,
                              'projectTitle' : Provider.of<MyProvider>(context, listen: false).projectTitle,
                              'projectDetails' : Provider.of<MyProvider>(context, listen: false).projectDetails,
                              'projectStartDate' : Provider.of<MyProvider>(context, listen: false).projectStartDate,
                              'projectEndDate' : Provider.of<MyProvider>(context, listen: false).projectEndDate,
                              'interests' : Provider.of<MyProvider>(context, listen: false).interests,
                              'referenceName' : Provider.of<MyProvider>(context, listen: false).referenceName,
                              'referenceJobTitle' : Provider.of<MyProvider>(context, listen: false).referenceJobTitle,
                              'referenceCompany' : Provider.of<MyProvider>(context, listen: false).referenceCompany,
                              'referencePhone' : Provider.of<MyProvider>(context, listen: false).referencePhone,
                              'referenceEmail' : Provider.of<MyProvider>(context, listen: false).referenceEmail,
                            }
                        );
                      } catch (e) {
                        await sqlHelper.updateData('test',
                              {
                              'id': 1,
                              'fullName' : Provider.of<MyProvider>(context, listen: false).fullName,
                              'email' : Provider.of<MyProvider>(context, listen: false).email,
                              'phone' : Provider.of<MyProvider>(context, listen: false).phone,
                              'address' : Provider.of<MyProvider>(context, listen: false).address,
                              'dateOfBirth' : Provider.of<MyProvider>(context, listen: false).dateOfBirth,
                              'personalStatement' : Provider.of<MyProvider>(context, listen: false).personalStatement,
                              'companyName' : Provider.of<MyProvider>(context, listen: false).companyName,
                              'jobTitle' : Provider.of<MyProvider>(context, listen: false).jobTitle,
                              'companyDetails' : Provider.of<MyProvider>(context, listen: false).companyDetails,
                              'startDateCareer' : Provider.of<MyProvider>(context, listen: false).startDateCareer,
                              'endDateCareer' : Provider.of<MyProvider>(context, listen: false).endDateCareer,
                              'schoolName' : Provider.of<MyProvider>(context, listen: false).schoolName,
                              'degree' : Provider.of<MyProvider>(context, listen: false).degree,
                              'fieldOfStudy' : Provider.of<MyProvider>(context, listen: false).fieldOfStudy,
                              'grade' : Provider.of<MyProvider>(context, listen: false).grade,
                              'startDateEducation' : Provider.of<MyProvider>(context, listen: false).startDateEducation,
                              'endDateEducation' : Provider.of<MyProvider>(context, listen: false).endDateEducation,
                              'keySkills' : Provider.of<MyProvider>(context, listen: false).keySkills,
                              'projectTitle' : Provider.of<MyProvider>(context, listen: false).projectTitle,
                              'projectDetails' : Provider.of<MyProvider>(context, listen: false).projectDetails,
                              'projectStartDate' : Provider.of<MyProvider>(context, listen: false).projectStartDate,
                              'projectEndDate' : Provider.of<MyProvider>(context, listen: false).projectEndDate,
                              'interests' : Provider.of<MyProvider>(context, listen: false).interests,
                              'referenceName' : Provider.of<MyProvider>(context, listen: false).referenceName,
                              'referenceJobTitle' : Provider.of<MyProvider>(context, listen: false).referenceJobTitle,
                              'referenceCompany' : Provider.of<MyProvider>(context, listen: false).referenceCompany,
                              'referencePhone' : Provider.of<MyProvider>(context, listen: false).referencePhone,
                              'referenceEmail' : Provider.of<MyProvider>(context, listen: false).referenceEmail,
                              }
                        );
                      }




                      Navigator.pushNamed(context, '/pdf0');
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
