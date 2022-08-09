import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/departments.dart';
import 'package:smart_employees/drawer/designations.dart';
import 'package:smart_employees/drawer/leaverequest.dart';
import 'package:smart_employees/drawer/leavesetups.dart';
import 'package:smart_employees/drawer/leavetypes.dart';
import 'package:smart_employees/drawer/shifts.dart';
import 'package:smart_employees/drawer/workflow.dart';
import 'package:smart_employees/home_screen.dart';
import 'package:smart_employees/theme/theme_model.dart';

import 'employees.dart';
import 'holidays.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return Drawer(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff1E1E2D),
              ),
              accountName: Text(
                "Umang Bhanderi",
                style: TextStyle(fontSize: 30),
              ),
              accountEmail: Text(
                "umangb124@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Theme",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // InkWell(
                //   onTap: () {
                //     themeNotifire.isDark
                //         ? themeNotifire.isDark = true
                //         : themeNotifire.isDark = false;
                //   },
                //   child: 
                  Switch(
                      value: themeNotifire.isDark
                          ? themeNotifire.isDark = true
                          : themeNotifire.isDark = false,
                      onChanged: (value) {
                        themeNotifire.isDark
                            ? themeNotifire.isDark = true
                            : themeNotifire.isDark = false;
                      }),
                // ),
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
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ExpansionTile(
              title: const Text(
                "Company",
                style: TextStyle(fontSize: 20),
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
                            style: TextStyle(fontSize: 20),
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
                              style: TextStyle(fontSize: 20),
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
                            style: TextStyle(fontSize: 20),
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
                              style: TextStyle(fontSize: 20),
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
                            style: TextStyle(fontSize: 20),
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
                style: TextStyle(fontSize: 20),
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
                style: TextStyle(fontSize: 20),
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
                style: TextStyle(fontSize: 20),
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
                style: TextStyle(fontSize: 20),
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
          ]));
    });
  }
}
