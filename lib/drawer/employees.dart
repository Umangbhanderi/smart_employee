import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Employees extends StatefulWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  State<Employees> createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  List<Leaveconflicts1> leaveconflicts1 = [
    Leaveconflicts1(
        "Umang Bhanderi", "umangb124@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Sahil Trambadiya", "sahilt123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Vikas Patel", "vikas123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Bhargav Suhagiya", "bhangav123@gmail.com", "Python", "8511961052"),
    Leaveconflicts1(
        "Piyush Nadoda", "piyush123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Kinjal Gajjar", "kinjal123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Nisha Laniya", "nisha123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Umang Bhanderi", "umangb124@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Sahil Trambadiya", "sahilt123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Vikas Patel", "vikas123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Bhargav Suhagiya", "bhangav123@gmail.com", "Python", "8511961052"),
    Leaveconflicts1(
        "Piyush Nadoda", "piyush123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Kinjal Gajjar", "kinjal123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Nisha Laniya", "nisha123@gmail.com", "Flutter", "8511961052"),
  ];
  String color = "";
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 40),
            actions: const [Icon(Icons.notifications)],
            title: Text("EMPLOYEE & MANAGERS",
                style: TextStyle(
                  fontSize: 20,
                  color: themeNotifire.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Search for Employee",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, right: 10, left: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Employee",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffFABF3F)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Managers",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffFABF3F)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Leave Conflicts",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Add New",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Color(0xffFABF3F)))),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: leaveconflicts1.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                        maxRadius: 40,
                                        backgroundImage: AssetImage(
                                            'assets/images/profile.jpg')),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            leaveconflicts1[index].name,
                                            style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            leaveconflicts1[index].email,
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            leaveconflicts1[index].technology,
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            leaveconflicts1[index].contect,
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Active",
                                        style: TextStyle(
                                            fontSize: 20,
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
                                  ),
                                  const Text(
                                    "07 May 2021",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const Text(
                                    "Leave Balance: 19",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ],
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
