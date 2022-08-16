import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/Department/departments.dart';
import 'package:smart_employees/drawer/Designations/designations.dart';
import 'package:smart_employees/drawer/LeaveRequest/leaverequest.dart';
import 'package:smart_employees/drawer/LeaveSetup/leavesetups.dart';
import 'package:smart_employees/drawer/Leavetype/leavetypes.dart';
import 'package:smart_employees/drawer/Shift/shifts.dart';
import 'package:smart_employees/drawer/WorkFlow/workflow.dart';
import 'package:smart_employees/homeScreen/home_screen.dart';
import 'package:smart_employees/theme/theme_model.dart';

import 'Employee/employees.dart';
import 'Holiday/holidays.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  // bool status = false;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      bool status = themeNotifire.isDark? 
      themeNotifire.isDark = true : themeNotifire.isDark = false;
      return Drawer(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            child: Column(children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff1E1E2D),
                ),
                accountName: Text(
                  "Umang Bhanderi",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  "umangb124@gmail.com",
                  style: TextStyle(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
          
              Column(
                children: [
                  SwitchListTile(
                    secondary:const Icon(Icons.dark_mode_outlined),
                      value: status,
                      title:const Text(
                        "Dark Theme",
                        style: TextStyle(fontSize: 14),
                      ),
                      onChanged: (value) {
                        setState(() {
                          status = themeNotifire.isDark?
                          status = true : status = false;
                        });
                      }),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              ExpansionTile(
                title: const Text(
                  "Company",
                  style: TextStyle(fontSize: 14),
                ),
                leading: const Icon(Icons.business),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.0, vertical: 17.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            child: const Text(
                              "Departments",
                              style: TextStyle(fontSize: 14),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Departments()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: InkWell(
                              child: const Text(
                                "Designations",
                                style: TextStyle(fontSize: 14),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Designations()));
                              },
                            ),
                          ),
                          InkWell(
                            child: const Text(
                              "Shifts",
                              style: TextStyle(fontSize: 14),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Shifts()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: InkWell(
                              child: const Text(
                                "Leave Types",
                                style: TextStyle(fontSize: 14),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Leavetypes()));
                              },
                            ),
                          ),
                          InkWell(
                            child: const Text(
                              "Leave Setups",
                              style: TextStyle(fontSize: 14),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Leavesetups()));
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ListTile(
                leading: const Icon(Icons.person_add_sharp),
                title: const Text(
                  "Employees",
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Employees()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.near_me_outlined),
                title: const Text(
                  "Holidays",
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Holidays()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month_sharp),
                title: const Text(
                  "Leave Requests",
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Leaverequest()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.line_style),
                title: const Text(
                  "Workflow",
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Workflow()));
                },
              ),
              //       // ListView.builder(itemBuilder: (context,index) {
              //       //   return ListTile(
              //       //     leading: Icon(icons[index]),
              //       //     title: Text(names[index]),
              //       //   );
              //       // })
              //     ],
              //     // Title(
              //     //     color: Colors.black,
              //     //     child:const Text(
              //     //       "Drawer",
              //     //       style: TextStyle(
              //     //           fontSize: 30,
              //     //           fontWeight: FontWeight.bold,
              //     //           color: Colors.black),
              //     //     ),
          
              //     //     ),
            ]),
          ));
    });
  }
}
