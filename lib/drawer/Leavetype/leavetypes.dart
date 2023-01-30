import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/Leavetype/leavetype_list.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

import '../../notification.dart';
// import 'package:smart_employees/lists/leavetypelist.dart';

class Leavetypes extends StatefulWidget {
  const Leavetypes({Key? key}) : super(key: key);

  @override
  State<Leavetypes> createState() => _LeavetypesState();
}

class _LeavetypesState extends State<Leavetypes> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            // actions: const [
            //   Icon(Icons.notifications),
            // ],
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notificationbtn()));
                  },
                  icon: Icon(Icons.notifications))
            ],
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 30),
            title: Text(
              "LEAVE TYPES",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: themeNotifire.isDark ? Colors.white : Colors.black),
            ),
          ),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.82,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "Select Status",
                          style: TextStyle(fontSize: 14),
                        )),
                      ),
                    ),
                    CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.replay_rounded),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, right: 15, left: 15, bottom: 15),
                child: Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search for Leave Type",
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              const LeaveTypeList()
            ],
          ),
        ),
      );
    });
  }
}
