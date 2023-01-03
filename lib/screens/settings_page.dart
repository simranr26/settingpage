import 'package:flutter/material.dart';
import 'package:settingpage/widget/profile_widget.dart';

import '../Models/person_detail.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFA2A2B5),
            )),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Color(
                0xFFA2A2B5,
              ),
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ProfileWidget(
                imageUrl: user.imageUrl,
                name: user.name,
                email: user.email,
              ),
            ),
           const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color:const Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 0.5, color: Colors.white12)),
              child: MaterialButton(
                onPressed: () {},
                child:const Text(
                  'Edit profile ',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
           const SizedBox(
              height: 30,
            ),
        
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                color:const Color.fromRGBO(255, 255, 255, 0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side:const BorderSide(
                    color:  Colors.white12,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading:const Icon(
                        Icons.face_unlock_rounded,
                        color: Colors.white,
                      ),
                      title:const Text(
                        'Security',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      trailing:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        const  Text('FaceID', style: TextStyle(color: Colors.white, fontSize: 15),), 
                          const Icon(Icons.arrow_right, color: Colors.white,),
                        ],
                      )
                    ),
                    const ListTile(
                      leading:Icon(
                        Icons.cloud,
                        color: Colors.white,
                      ),
                      title: Text(
                        'iCloud Sync',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      trailing:Icon(Icons.toggle_off, color: Colors.white,size: 45,),
                    ),
                  ],
                ),
              ),
            ),
          const  SizedBox(
              height: 20,
            ),
         
            SizedBox(
              height: 180,
              width: double.infinity,
              child: Card(
                color:const Color.fromRGBO(255, 255, 255, 0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side:const BorderSide(
                    color: Colors.white12,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading:const Icon(
                        Icons.face_unlock_rounded,
                        color: Colors.white,
                      ),
                      title:const Text(
                        'Sorting',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         const Text('Date',style:TextStyle(color: Colors.white, fontSize: 15)),
                          const Icon(Icons.arrow_right,color: Colors.white,),
                        ],
                      ),
                    ),
                    ListTile(
                      leading:const Icon(
                        Icons.cloud_circle,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Summary',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        const  Text('Average',style: TextStyle(color: Colors.white, fontSize: 15)),
                        const  Icon(Icons.arrow_right,color: Colors.white,),
                        ],
                      )
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.face_unlock_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Default currency',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Average',style: TextStyle(color: Colors.white, fontSize: 15)),
                          const Icon(Icons.arrow_right,color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const  SizedBox(
              height: 20,
            ),
           
            SizedBox(
              height: 160,
              width: double.infinity,
              child: Card(
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                elevation: 4,
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  side: BorderSide(
                    color: Colors.white12,
                    width: 1,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.face_unlock_rounded,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'App Icon',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        trailing:Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Default',style: TextStyle(color: Colors.white, fontSize: 15)),
                          const Icon(Icons.arrow_right,color: Colors.white,),
                        ],
                      ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.cloud_circle,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Theme',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         const Text('Dark',style: TextStyle(color: Colors.white, fontSize: 15),),
                         const Icon(Icons.arrow_right, color: Colors.white,),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
