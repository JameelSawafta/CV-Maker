import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';
import 'widget/myDrawer.dart';

class KeySkills extends StatelessWidget {
  KeySkills({Key? key}) : super(key: key);

  String keySkills = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Skills'),
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
              'Key Skills',
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
              child: Text(
                'Write your key skills here with comma separated eg. (HTML, CSS, JavaScript)',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Key Skills',
                ),
                onChanged: (value) {
                  keySkills = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).keySkills
                ),
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
                      String keySkills0 = Provider.of<MyProvider>(context, listen: false).keySkills;
                      Provider.of<MyProvider>(context, listen: false)
                          .setKeySkills(keySkills == '' ? keySkills0 : keySkills);
                      Navigator.pushReplacementNamed(context, '/Education');
                    },
                    child: const Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String keySkills0 = Provider.of<MyProvider>(context, listen: false).keySkills;
                      Provider.of<MyProvider>(context, listen: false)
                          .setKeySkills(keySkills == '' ? keySkills0 : keySkills);
                      Navigator.pushReplacementNamed(context, '/Projects');
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
