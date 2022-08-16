import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class LeaveSetupList extends StatefulWidget {
  const LeaveSetupList({Key? key}) : super(key: key);

  @override
  State<LeaveSetupList> createState() => _LeaveSetupListState();
}

class _LeaveSetupListState extends State<LeaveSetupList> {
  List<Leavesetuplist> leavesetuplist = [
    Leavesetuplist("Self-isolation", "Number of leave : 5", "Code : SI"),
    Leavesetuplist("Annual leave", "Number of leave : 5", "Code : ANL"),
    Leavesetuplist("Antenatal Leave", "Number of leave : 5", "Code : AL"),
    Leavesetuplist("Sickness", "Number of leave : 5", "Code : SL"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: leavesetuplist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                leavesetuplist[index].name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                leavesetuplist[index].leaves,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                leavesetuplist[index].code,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const Text(
                                "Date : 12/07/2021",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Active",
                              style: TextStyle(fontSize: 14),
                            )),
                        PopupMenuButton(
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: 1,
                                      child: Row(
                                        children: const [
                                          Icon(Icons.remove_red_eye_sharp),
                                          Text(
                                            "View",
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      )),
                                  PopupMenuItem(
                                      value: 2,
                                      child: Row(
                                        children: const [
                                          Icon(Icons.edit),
                                          Text("Edit",
                                              style:
                                                  TextStyle(fontSize: 14))
                                        ],
                                      )),
                                  PopupMenuItem(
                                      value: 3,
                                      child: Row(
                                        children: const [
                                          Icon(Icons.cancel),
                                          Text("Cancel",
                                              style:
                                                  TextStyle(fontSize: 14))
                                        ],
                                      )),
                                ])
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
