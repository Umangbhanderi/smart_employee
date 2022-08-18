import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/Holiday/holiday_list.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/drawer/Employee/employees.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Holidays extends StatefulWidget {
  const Holidays({Key? key}) : super(key: key);

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: themeNotifire.isDark ? Colors.white : Colors.black),
            ),
            actions: const [Icon(Icons.notifications)],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 30),
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
                            fontSize: 14,
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
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    scrollable: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.65,
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
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                            style: TextStyle(fontSize: 14),
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
                                              hintText: "Title",
                                              hintStyle:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          const Text(
                                            "Start Date*",
                                            style: TextStyle(fontSize: 14),
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
                                              hintText: "mm/dd/yyyy",
                                              hintStyle:
                                                  const TextStyle(fontSize: 14),
                                              suffixIcon: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.calendar_month)),
                                            ),
                                          ),
                                          const Text(
                                            "End Date*",
                                            style: TextStyle(fontSize: 14),
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
                                              hintText: "mm/dd/yyyy",
                                              hintStyle:
                                                  const TextStyle(fontSize: 14),
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
                                                child: Text("Submit",
                                                    style: TextStyle(
                                                        fontSize: 14)),
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
                                                                          20))),
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
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffFABF3F)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                        ),
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
                      hintStyle: const TextStyle(fontSize: 14),
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const HoliDayList()
            ],
          ),
        ),
      );
    });
  }
}
