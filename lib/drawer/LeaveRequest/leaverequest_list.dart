import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class LeaveRequestList extends StatefulWidget {
  const LeaveRequestList({Key? key}) : super(key: key);

  @override
  State<LeaveRequestList> createState() => _LeaveRequestListState();
}

class _LeaveRequestListState extends State<LeaveRequestList> {
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
      return Expanded(
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
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      const Text(
                                        "Casual Leave (CL)",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      const Text(
                                        "From: 12/07/2021  ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      const Text(
                                        "From: 12/07/2021",
                                        style: TextStyle(fontSize: 14),
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
                                                fontSize: 14,
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
                                                                    fontSize:
                                                                        14))
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
                                                                        14))
                                                          ],
                                                        )),
                                                  ])
                                        ],
                                      ),
                                      const Text(
                                        "Leave Balance: 12",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      const Text(
                                        "Day: 01",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }));   
  }
}