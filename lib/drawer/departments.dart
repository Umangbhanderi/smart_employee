import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  List<Departmentslist> departmentslist = [
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
  ];
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
                fontSize: 25,
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
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Card(
                    child: ExpansionTile(
                      title: Text(
                        "Select Status",
                        style: TextStyle(
                            fontSize: 20, decorationColor: Colors.black),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                    backgroundColor: const Color(0xff1E1E2D),
                    maxRadius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.replay_rounded),
                    )),
                CircleAvatar(
                    backgroundColor: const Color(0xff1E1E2D),
                    maxRadius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.drive_file_move_rtl_outlined),
                    )),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              content: SizedBox(
                                height: MediaQuery.of(context).size.width * 0.7,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "ADD DEPARTMENT",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.cancel_rounded,
                                              size: 40,
                                            ))
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 10),
                                      child: Text(
                                        "Department*",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Department",
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
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 10),
                                      child: Text(
                                        "Code",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Code",
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
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          const Color(
                                                              0xffFABF3F)),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
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
                              ),
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Add Department",
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: departmentslist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      departmentslist[index].technology,
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          departmentslist[index].code,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const Text(
                                          "   Date : 12/07/2021",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Active",
                                            style: TextStyle(fontSize: 20))),
                                    PopupMenuButton(
                                        itemBuilder: (context) => [
                                              PopupMenuItem(
                                                  value: 1,
                                                  child: Row(
                                                    children: const [
                                                      Icon(Icons
                                                          .remove_red_eye_sharp),
                                                      Text(
                                                        "View",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      )
                                                    ],
                                                  )),
                                              PopupMenuItem(
                                                  value: 2,
                                                  child: Row(
                                                    children: const [
                                                      Icon(Icons.edit),
                                                      Text("Edit",
                                                          style: TextStyle(
                                                              fontSize: 20))
                                                    ],
                                                  )),
                                              PopupMenuItem(
                                                  value: 3,
                                                  child: Row(
                                                    children: const [
                                                      Icon(Icons.cancel),
                                                      Text("Cancel",
                                                          style: TextStyle(
                                                              fontSize: 20))
                                                    ],
                                                  )),
                                            ])
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      );
    });
  }
}
