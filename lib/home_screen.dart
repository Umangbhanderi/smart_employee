import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/drawer/employees.dart';
import 'package:smart_employees/drawer/holidays.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Leaveconflicts> leaveconflicts = [
    Leaveconflicts("Umang Bhanderi", "Casual Leave (CL)", "26/4", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts(
        "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
        
  ];
  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    themeNotifire.isDark
                        ? themeNotifire.isDark = false
                        : themeNotifire.isDark = true;
                  },
                  icon: Icon(
                    themeNotifire.isDark
                        ? Icons.wb_sunny
                        : Icons.nightlight_round,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
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
                size: 40),
          ),
          drawer: const DrawerWidget(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                                height: 196,
                                width: 196,
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
                                            fontSize: 20,
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
                                height: 196,
                                width: 196,
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
                                            fontSize: 20,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 196,
                              width: 196,
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
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 196,
                              width: 196,
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
                                          fontSize: 20,
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: leaveconflicts.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        leaveconflicts[index].name,
                                        style: const TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Icon(Icons.more_vert_rounded)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        leaveconflicts[index].address,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      const Text(
                                        "Leave Balance: 12",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        leaveconflicts[index].date,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      const Text(
                                        "Day: 01",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Text(
                  "Upcoming 7 days leave request",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: leaveconflicts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      leaveconflicts[index].name,
                                      style: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      leaveconflicts[index].address,
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "From: 12/07/2021",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          "To: 12/07/2021",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "Pending",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xffFABF3F)),
                                        ),
                                        Icon(Icons.more_vert_rounded),
                                      ],
                                    ),
                                    const Text(
                                      "Leave Balance: 12",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    const Text(
                                      "Day: 01",
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: 30),
                child: Text(
                  "Leave trend of month July",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
