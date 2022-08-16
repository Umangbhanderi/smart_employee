import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class DesignationList extends StatefulWidget {
  const DesignationList({Key? key}) : super(key: key);

  @override
  State<DesignationList> createState() => _DesignationListState();
}

class _DesignationListState extends State<DesignationList> {
  List<Designationslist> designationlist = [
    Designationslist("Project Managers", "Flutter"),
    Designationslist("Developers", "PHP"),
    Designationslist("Project Managers", "PHP"),
    Designationslist("Developers", ".net"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(  
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          designationlist[index].tech,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                        const Text(
                                          "   Date : 12/07/2021",
                                          style: TextStyle(fontSize: 14),
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
                                            style: TextStyle(fontSize: 14))),
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
                                                            fontSize: 14),
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
                                                              fontSize: 14))
                                                    ],
                                                  )),
                                              PopupMenuItem(
                                                  value: 3,
                                                  child: Row(
                                                    children: const [
                                                      Icon(Icons.cancel),
                                                      Text("Cancel",
                                                          style: TextStyle(
                                                              fontSize: 14))
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
                    }));
  }
}