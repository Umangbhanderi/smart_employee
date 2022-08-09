import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
// import 'package:smart_employees/lists/designationlist.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Designations extends StatefulWidget {
  const Designations({Key? key}) : super(key: key);

  @override
  State<Designations> createState() => _DesignationsState();
}

class _DesignationsState extends State<Designations> {
  List<Designationslist> designationlist = [
    Designationslist("Project Managers", "Flutter"),
    Designationslist("Developers", "PHP"),
    Designationslist("Project Managers", "PHP"),
    Designationslist("Developers", ".net"),
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
            "DESIGNATIONS",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeNotifire.isDark ? 
                Colors.white :
                 Colors.black),
          ),
          actions: const [
            Icon(Icons.notifications),
          ],
          iconTheme: IconThemeData(
              color: themeNotifire.isDark ? Colors.white : Colors.black,
              size: 40),
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Card(
                    child: ExpansionTile(
                      title: Text(
                        "Select Department",
                        style: TextStyle(
                            fontSize: 20, decorationColor: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.replay_rounded)),
                  ),
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
                                    borderRadius: BorderRadius.circular(20)),
                                content: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.33,
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
                                            "ADD DESIGNATION",
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
                                              )),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Department*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
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
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Designation*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Designation",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Submit",
                                                  style:
                                                      TextStyle(fontSize: 20),
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
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: const Text(
                      "Add Designations",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xffFABF3F),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 15, left: 15, top: 20, bottom: 15),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search for Designations",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ]),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: designationlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      designationlist[index].name,
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          designationlist[index].tech,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      );
    });
  }
}
