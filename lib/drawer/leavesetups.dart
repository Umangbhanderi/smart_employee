import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  List<Leavesetuplist> leavesetuplist = [
    Leavesetuplist("Self-isolation", "Number of leave : 5", "Code : SI"),
    Leavesetuplist("Annual leave", "Number of leave : 5", "Code : ANL"),
    Leavesetuplist("Antenatal Leave", "Number of leave : 5", "Code : AL"),
    Leavesetuplist("Sickness", "Number of leave : 5", "Code : SL"),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "LEAVE SETUPS",
          style: TextStyle(
              fontSize: 25, color:themeNotifire.isDark? Colors.white : Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [
          Icon(Icons.notifications),
        ],
        iconTheme: IconThemeData(color: themeNotifire.isDark? Colors.white : Colors.black, size: 40),
      ),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Card(
                      child: ExpansionTile(
                          title: Text(
                    "Select Status",
                    style:
                        TextStyle(fontSize: 20, decorationColor: Colors.black),
                  ))),
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
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "ADD LEAVE SETUP",
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
                                          EdgeInsets.only(top: 15, bottom: 10),
                                      child: Text("Type*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Title",
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
                                          EdgeInsets.only(top: 15, bottom: 10),
                                      child: Text("Code*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
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
                                                  BorderRadius.circular(10))),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 10),
                                      child: Text("Number of leave*",
                                          style: TextStyle(
                                              fontSize: 20,
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
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                              style: TextStyle(fontSize: 20),
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
            child: Card(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search for Leave Setups",
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
                  itemCount: leavesetuplist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10),
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
                                    leavesetuplist[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    leavesetuplist[index].leaves,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    leavesetuplist[index].code,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  const Text(
                                    "Date : 12/07/2021",
                                    style: TextStyle(fontSize: 20),
                                  ),
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
