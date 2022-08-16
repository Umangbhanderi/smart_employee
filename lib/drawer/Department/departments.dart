import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/Department/department_list.dart';
import 'package:smart_employees/drawer/drawer.dart';
// import 'package:smart_employees/lists/departmentslist.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "DEPARTMENTS",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: themeNotifire.isDark ? Colors.white : Colors.black),
          ),
          actions: const [Icon(Icons.notifications)],
          iconTheme: IconThemeData(
              color: themeNotifire.isDark ? Colors.white : Colors.black,
              size: 30),
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: const Card(
                    child: ExpansionTile(
                      title: Text(
                        "Select Status",
                        style: TextStyle(
                            fontSize: 14, decorationColor: Colors.black),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                    backgroundColor: const Color(0xff1E1E2D),
                    maxRadius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.replay_rounded),
                    )),
                CircleAvatar(
                    backgroundColor: const Color(0xff1E1E2D),
                    maxRadius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.drive_file_move_rtl_outlined),
                    )),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              content: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Stack(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "ADD DEPARTMENT",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              splashRadius: 20,
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.cancel_rounded,
                                                size: 30,
                                              )),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 20, bottom: 10),
                                        child: Text(
                                          "Department*",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Department",
                                          hintStyle:const TextStyle(fontSize: 14),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 20, bottom: 10),
                                        child: Text(
                                          "Code",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Code",
                                          hintStyle:const TextStyle(fontSize: 14),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 30,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Submit",
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(const Color(
                                                                0xffFABF3F)),
                                                    shape: MaterialStateProperty
                                                        .all(RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)))),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.black,
                    ),
                    label:const Text(
                      "Add Department",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffFABF3F)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 15, right: 15, left: 15),
              child: Card(
                // shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Search for Departments",
                    hintStyle:const TextStyle(fontSize: 14),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            DepartmentList()
          ],
        ),
      );
    });
  }
}
