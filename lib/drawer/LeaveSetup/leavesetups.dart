import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/LeaveSetup/leavesetup_list.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';
// import 'package:smart_employees/lists/leavesetuplist.dart';

class Leavesetups extends StatefulWidget {
  const Leavesetups({Key? key}) : super(key: key);

  @override
  State<Leavesetups> createState() => _LeavesetupsState();
}

class _LeavesetupsState extends State<Leavesetups> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "LEAVE SETUPS",
            style: TextStyle(
                fontSize: 20,
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: const [
            Icon(Icons.notifications),
          ],
          iconTheme: IconThemeData(
              color: themeNotifire.isDark ? Colors.white : Colors.black,
              size: 30),
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const Card(
                        child: ExpansionTile(
                            title: Text(
                      "Select Status",
                      style: TextStyle(
                          fontSize: 14, decorationColor: Colors.black),
                    ))),
                  ),
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.black,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.replay_rounded)),
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                scrollable: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                content: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.65,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "ADD LEAVE SETUP",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.cancel,
                                                size: 30,
                                              ))
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 10),
                                        child: Text("Type*",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Title",
                                            hintStyle:
                                                const TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 10),
                                        child: Text("Code*",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Code",
                                            hintStyle:
                                                const TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 10),
                                        child: Text("Number of leave*",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    const Color(0xffFABF3F),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)))),
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
                        Icons.add_circle_outline_rounded,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Leave Setups",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFABF3F)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
              child: Card(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search for Leave Setups",
                      hintStyle: const TextStyle(fontSize: 14),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ),
            const LeaveSetupList()
          ],
        ),
      );
    });
  }
}
