import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/drawer/Employee/employees.dart';
import 'package:smart_employees/drawer/Holiday/holidays.dart';
import 'package:smart_employees/homeScreen/leave_conflicts.dart';
import 'package:smart_employees/homeScreen/leave_request_list.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/notification.dart';
import 'package:smart_employees/theme/theme_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Leaveconflicts> leaveconflicts = [
  //   Leaveconflicts("Umang Bhanderi", "Casual Leave (CL)", "26/4", "12/07/2021",
  //       "12/07/2021"),
  //   Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
  //       "12/07/2021"),
  //   Leaveconflicts(
  //       "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
  // ];
  @override
  Widget build(BuildContext context) {
    // bool status = themm;
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      bool status = themeNotifire.isDark
          ? themeNotifire.isDark = true
          : themeNotifire.isDark = false;
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      themeNotifire.isDark
                          ? themeNotifire.isDark = false
                          : themeNotifire.isDark = true;
                    });
                  }),
              // IconButton(
              //     onPressed: () {
              //       themeNotifire.isDark
              //           ? themeNotifire.isDark = false
              //           : themeNotifire.isDark = true;
              //     },
              //     icon: Icon(
              //       themeNotifire.isDark
              //           ? Icons.wb_sunny
              //           : Icons.nightlight_round,
              //     )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notificationbtn()));
                  },
                  icon: Icon(
                    Icons.notifications,
                  )),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "HOME",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: themeNotifire.isDark ? Colors.white : Colors.black),
            ),
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 30),
          ),
          drawer: const DrawerWidget(),
          body: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Employees()));
                                  },
                                  child: Container(
                                    // height: 196,
                                    // width: 196,
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xffDDEBFF)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 25),
                                          child: Text(
                                            "Employee",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Holidays()));
                                  },
                                  child: Container(
                                    // height: 196,
                                    // width: 196,
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFF6EB),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 25),
                                          child: Text(
                                            "Holiday",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                // height: 196,
                                // width: 196,
                                width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                decoration: BoxDecoration(
                                    color: const Color(0xffEAE7F9),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 25),
                                      child: Text(
                                        "Manager",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // height: 196,
                                // width: 196,
                                width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                decoration: BoxDecoration(
                                    color: const Color(0xffE4FBFF),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 25),
                                      child: Text(
                                        "Calendar",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Leave Conflicts",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                LeaveConfilctsList(),
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                  child: Text(
                    "Upcoming 7 days leave request",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const LeaveRequestLists(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20,),
                  child: Text(
                    "Leave trend of month July",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
