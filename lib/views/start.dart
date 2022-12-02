import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';
import '../repository/sql_helper.dart';


class StartP extends StatelessWidget {
  StartP({Key? key}) : super(key: key);

  SqlHelper sqlHelper = SqlHelper();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start'),
        backgroundColor: Color(0xff05172a),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.w,
              ),
              Text(
                'Start',
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              Text(
                'You should fill all the information',
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              ElevatedButton(
                onPressed: () async {

                  try{
                      List<Map<String, dynamic>> e =
                          await sqlHelper.readData('Test', where: 'id = 1');
                      Provider.of<MyProvider>(context, listen: false)
                          .addContactInfo(
                              e[0]['fullName'],
                              e[0]['email'],
                              e[0]['phone'],
                              e[0]['address'],
                              e[0]['dateOfBirth']);
                      Provider.of<MyProvider>(context, listen: false)
                          .setPersonalStatement(e[0]['personalStatement']);
                      Provider.of<MyProvider>(context, listen: false).addCareer(
                          e[0]['companyName'],
                          e[0]['jobTitle'],
                          e[0]['companyDetails'],
                          e[0]['startDateCareer'],
                          e[0]['endDateCareer']);
                      Provider.of<MyProvider>(context, listen: false)
                          .addEducation(
                              e[0]['schoolName'],
                              e[0]['degree'],
                              e[0]['fieldOfStudy'],
                              e[0]['grade'],
                              e[0]['startDateEducation'],
                              e[0]['endDateEducation']);
                      Provider.of<MyProvider>(context, listen: false)
                          .setKeySkills(e[0]['keySkills']);
                      Provider.of<MyProvider>(context, listen: false)
                          .addProject(
                              e[0]['projectTitle'],
                              e[0]['projectDetails'],
                              e[0]['projectStartDate'],
                              e[0]['projectEndDate']);
                      Provider.of<MyProvider>(context, listen: false)
                          .setinterests(e[0]['interests']);
                      Provider.of<MyProvider>(context, listen: false)
                          .addReference(
                              e[0]['referenceName'],
                              e[0]['referenceJobTitle'],
                              e[0]['referenceCompany'],
                              e[0]['referencePhone'],
                              e[0]['referenceEmail']);

                      print(e);
                    }
                    catch(e){

                    }

                    Navigator.pushReplacementNamed(context, '/ContactInfo');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff05172a),
                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.w),
                ),
                child: Text('Start'),
              ),

            ],
          ),
        ),
      )
    );
  }
}
