import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';

class Workflow extends StatefulWidget {
  const Workflow({Key? key}) : super(key: key);

  @override
  State<Workflow> createState() => _WorkflowState();
}

class _WorkflowState extends State<Workflow> {
  List<Workflowlist> workflowlist = [
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
    Workflowlist("On board"),
    Workflowlist("Off boarding"),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "WORKFLOW",
            style: TextStyle(
                fontSize: 25,
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          actions: const [Icon(Icons.notifications)],
          iconTheme: IconThemeData(
              color: themeNotifire.isDark ? Colors.white : Colors.black,
              size: 40),
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                                      MediaQuery.of(context).size.height * 0.6,
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
                                            "ADD WORKFLOW",
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
                                            top: 25, bottom: 15),
                                        child: Text(
                                          "Type*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Title",
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
                                          "Name*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Name",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                            10,
                                          )),
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
                                          "Perform By*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: const Card(
                                          child: ExpansionTile(
                                            title: Text(
                                              "Select Perform By",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  decorationColor:
                                                      Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Text(
                                          "Days*",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.6,
                                              child: const Card(
                                                child: ExpansionTile(
                                                  title: Text("Select Days",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          decorationColor:
                                                              Colors.black)),
                                                ),
                                              )),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Add",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                ),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color(
                                                            0xffFABF3F))),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          const Color(
                                                              0xffFABF3F))),
                                            ),
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
                        Icons.add_circle_outline_outlined,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Add New",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFABF3F))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, bottom: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search for Leave Setup",
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
                    itemCount: workflowlist.length,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      workflowlist[index].name,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Created Date: 07 May 2021",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),

                                // IconButton(
                                //     onPressed: () {

                                // showCupertinoModalPopup(
                                //     context: context,
                                //     builder: (context) {
                                //       return SizedBox(
                                //         height: MediaQuery.of(context).size.height * 0.2,
                                //         child: Row());
                                //     });
                                // showModalBottomSheet(context: context, builder: (context){
                                //   return SizedBox(
                                //     height: MediaQuery.of(context).size.height * 0.2,
                                //     child: Row(

                                //     ),
                                //   );
                                // });
                                // },
                                // icon: const Icon(
                                //   Icons.more_vert_rounded,
                                //   size: 30,
                                // )),
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
                                                    style:
                                                        TextStyle(fontSize: 20),
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
