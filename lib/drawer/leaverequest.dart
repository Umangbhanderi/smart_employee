import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Leaverequest extends StatefulWidget {
  const Leaverequest({Key? key}) : super(key: key);

  @override
  State<Leaverequest> createState() => _LeaverequestState();
}

class _LeaverequestState extends State<Leaverequest> {
  List<Leaverequestlist> leaverequestlist = [
    Leaverequestlist("Jethalal Gada"),
    Leaverequestlist("Umang Bhanderi"),
    Leaverequestlist("sahil Trambadiya"),
    Leaverequestlist("Piyush Nadoda"),
    Leaverequestlist("Vikas Patel"),
    Leaverequestlist("Bhargav Suhagiya"),
    Leaverequestlist("Kinjal Gajjar"),
    Leaverequestlist("Nisha Laniya"),
    Leaverequestlist("Raj Patel"),
    Leaverequestlist("Rakesh Patel"),
    Leaverequestlist("Krishna Yadav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "LEAVE REQUESTS",
              style: TextStyle(
                  fontSize: 25,
                  color: themeNotifire.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 40),
            actions: const [Icon(Icons.notifications)],
          ),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "Select Status",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 25,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.replay_rounded)),
                      backgroundColor: Colors.black,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                content: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "APPLY LEAVE",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.cancel,
                                                size: 40,
                                              ))
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Leave Type*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        child: ExpansionTile(
                                            title: Text(
                                          "Select Leave Type",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Is Half Day Leave",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, bottom: 15, right: 7),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Date From*",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.32,
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "mm/dd/yyyy",
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8),
                                                  child: Text(
                                                    "Date To*",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.32,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        hintText: "mm/dd/yyyy",
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Days",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "day",
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
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Reason*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Reason",
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
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
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
                        Icons.add_circle_outline_outlined,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Add New",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFABF3F)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "Select Employee",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "1 jul, 2021-31 Jul, 2021",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                      // contentPadding: const EdgeInsets.symmetric(vertical: 80.0),
                      hintText: "Search for Leave Setup",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: leaverequestlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 15, bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(leaverequestlist[index].name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      const Text(
                                        "Casual Leave (CL)",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "From: 12/07/2021  ",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "  From: 12/07/2021",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Approved",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff1BC5BD)),
                                          ),
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
                                                                    fontSize:
                                                                        20))
                                                          ],
                                                        )),
                                                    PopupMenuItem(
                                                        value: 3,
                                                        child: Row(
                                                          children: const [
                                                            Icon(Icons.cancel),
                                                            Text("Cancel",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20))
                                                          ],
                                                        )),
                                                  ])
                                        ],
                                      ),
                                      const Text(
                                        "Leave Balance: 12",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      const Text(
                                        "Day: 01",
                                        style: TextStyle(fontSize: 18),
                                      ),
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
        ),
      );
    });
  }
}
