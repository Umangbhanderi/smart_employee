import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/drawer/employees.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Holidays extends StatefulWidget {
  const Holidays({Key? key}) : super(key: key);

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  List<Holidaylist> holidaylist = [
    Holidaylist("Christmas"),
    Holidaylist("Bhai Duj"),
    Holidaylist("Samvat New Year Day"),
    Holidaylist("Diwali"),
    Holidaylist("Dussehra"),
    Holidaylist("Gandhi Jayanti"),
    Holidaylist("Ganesh Visarjan"),
    Holidaylist("Janmasthami"),
    Holidaylist("Rakshabandhan"),
    Holidaylist("Independence day"),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "HOLIDAYS",
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: themeNotifire.isDark ? Colors.white : Colors.black),
            ),
            actions: const [Icon(Icons.notifications)],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 40),
          ),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "Select Status",
                          style: TextStyle(
                            fontSize: 20,
                            decorationColor: Colors.black,
                          ),
                        )),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xff1E1E2D),
                      maxRadius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.refresh),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xff1E1E2D),
                      maxRadius: 25,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_downward_sharp)),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  content: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "ADD HOLIDAY",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.cancel_rounded,
                                                  size: 30,
                                                ))
                                          ],
                                        ),
                                        const Text(
                                          "Title*",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: "Title"),
                                        ),
                                        const Text(
                                          "Start Date*",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            hintText: "mm/dd/yyyy",
                                            suffixIcon: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.calendar_month)),
                                          ),
                                        ),
                                        const Text(
                                          "End Date*",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            hintText: "mm/dd/yyyy",
                                            suffixIcon: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.calendar_month)),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Submit",
                                                  style:
                                                      TextStyle(fontSize: 20)),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color(
                                                            0xffFABF3F)),
                                                shape: MaterialStateProperty
                                                    .all(RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Add Holiday",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffFABF3F)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Search for Holidays",
                      hintStyle: const TextStyle(fontSize: 20),
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: holidaylist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        holidaylist[index].name,
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "From: 12/07/2021   ",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            "From: 12/07/2021",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ]),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Active",
                                          style: TextStyle(fontSize: 20),
                                        )),
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
                    }),
              )
            ],
          ),
        ),
      );
    });
  }
}
