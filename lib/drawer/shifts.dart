import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';
// import 'package:smart_employees/lists/shiftlist.dart';

class Shifts extends StatefulWidget {
  const Shifts({Key? key}) : super(key: key);

  @override
  State<Shifts> createState() => _ShiftsState();
}

class _ShiftsState extends State<Shifts> {
  List<Shiftlist> shiftlist = [
    Shiftlist("Dev", "Code : DE"),
    Shiftlist("Weekly", "Code : WE"),
    Shiftlist("Monthly", "Code : ME"),
    Shiftlist("Yearly", "Code : YE"),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "SHIFTS",
          style: TextStyle(
              fontSize: 25, color: themeNotifire.isDark ? 
                Colors.white :
                 Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.notifications)],
        iconTheme: IconThemeData(color: themeNotifire.isDark ? 
                Colors.white :
                 Colors.black, size: 40),
      ),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Card(
                    child: ExpansionTile(
                        title:const Text(
                  "Select Status",
                  style:
                      TextStyle(fontSize: 20, decorationColor: Colors.black),
                ),
                children: [
                  Column(
                    children:const [
                      Text("Developer"),
                      Text("Manager"),
                      Text("data")
                    ],
                  )
                ],
                )),
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: Colors.black,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.replay_rounded)),
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            content: SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.37,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "ADD SHIFT",
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
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: Text("Name*",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Name",
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
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: Text("Code",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Code",
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
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    child: Text("Sift Days*",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Submit",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              const Color(0xffFABF3F),
                                            ),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
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
                    "Add Shifts",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffFABF3F)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 20, bottom: 15),
            child: Card(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search for Shift",
                    // errorText: "Plese enter valid data",
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
          Expanded(
              child: ListView.builder(
                  itemCount: shiftlist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    shiftlist[index].name,
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        shiftlist[index].code,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      const Text(
                                        "    Date : 12/07/2021",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
                                                children:const [
                                                  Icon(Icons
                                                      .remove_red_eye_sharp),
                                                  Text(
                                                    "View",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  )
                                                ],
                                              )),
                                          PopupMenuItem(
                                              value: 2,
                                              child: Row(
                                                children:const [
                                                  Icon(Icons.edit),
                                                  Text("Edit",
                                                      style: TextStyle(
                                                          fontSize: 20))
                                                ],
                                              )),
                                          PopupMenuItem(
                                              value: 3,
                                              child: Row(
                                                children:const [
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
