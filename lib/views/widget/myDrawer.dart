import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'drawerItem.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('images/cv.jpg'), width: 75.w, height: 75.w,),
                ),
                SizedBox(height: 10.w,),
                Text('CV Engineer',style: TextStyle(color: Colors.white,fontSize: 20 ),),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xff05172a),
            ),
          ),
          DrawerItem(item: 'Contact Info',icon: Icons.call_outlined,pageName: '/ContactInfo',),
          DrawerItem(item: 'Personal Statement',icon: Icons.person_outline,pageName: '/PersonalStatement',),
          DrawerItem(item: 'Career',icon: Icons.backpack_outlined,pageName: '/Career',),
          DrawerItem(item: 'Education',icon: Icons.school_outlined,pageName: '/Education',),
          DrawerItem(item: 'Key Skills',icon: Icons.vpn_key_outlined,pageName: '/KeySkills',),
          DrawerItem(item: 'Projects',icon: Icons.folder_open_outlined,pageName: '/Projects',),
          DrawerItem(item: 'Interests',icon: Icons.interests_outlined,pageName: '/Interests',),
          DrawerItem(item: 'References',icon: Icons.group_outlined,pageName: '/References',),



        ],
      ),
    );
  }
}
