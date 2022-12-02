import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';
import 'widget/myDrawer.dart';

class Interests extends StatelessWidget {
  Interests({Key? key}) : super(key: key);

  String interests = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interests'),
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
              'Interests',
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
                'Write your interests here with comma separated eg. (Reading, Travelling, Music)',
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
                  labelText: 'Interests',
                ),
                onChanged: (value) {
                  interests = value;
                },
                controller: TextEditingController(
                    text: Provider.of<MyProvider>(context).interests
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
                      String interests0 = Provider.of<MyProvider>(context, listen: false).interests;
                      Provider.of<MyProvider>(context, listen: false)
                          .setinterests(interests == '' ? interests0 : interests);
                      Navigator.pushReplacementNamed(context, '/Projects');
                    },
                    child: const Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff05172a),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String interests0 = Provider.of<MyProvider>(context, listen: false).interests;
                      Provider.of<MyProvider>(context, listen: false)
                          .setinterests(interests == '' ? interests0 : interests);
                      Navigator.pushReplacementNamed(context, '/References');
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
