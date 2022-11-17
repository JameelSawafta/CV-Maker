import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class Career extends StatelessWidget {
  const Career({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Career',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Write a short paragraph about your career goals.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                maxLines: 10,
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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/career');
                    },
                    child: const Text('Next'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff05172a),
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
