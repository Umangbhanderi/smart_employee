import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class LeaveTypeList extends StatefulWidget {
  const LeaveTypeList({Key? key}) : super(key: key);

  @override
  State<LeaveTypeList> createState() => _LeaveTypeListState();
}

class _LeaveTypeListState extends State<LeaveTypeList> {

  List<Leavetypelist> leavetypelist = [
    Leavetypelist("Bank Holiday", "Code : BH"),
    Leavetypelist("Annual leave", "Code : ANL"),
    Leavetypelist("Unpaid Leave", "Code : ASD"),
    Leavetypelist("Training events", "Code : TE"),
    Leavetypelist("Time off in lieu", "Code : TOL"),
    Leavetypelist("Time off for dependents", "Code : TOD"),
    Leavetypelist("Shared-parental leave", "Code : SPL"),
    Leavetypelist("Self-isolation", "Code : SI"),
    Leavetypelist("Paternity leave", "Code : PL"),
    Leavetypelist("Parental Leave", "Code : PPL"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  child: ListView.builder(
                      itemCount: leavetypelist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 5, right: 5, bottom: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        leavetypelist[index].type,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        leavetypelist[index].code,
                                        style: const TextStyle(fontSize: 14),
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