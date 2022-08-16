import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class HoliDayList extends StatefulWidget {
  const HoliDayList({Key? key}) : super(key: key);

  @override
  State<HoliDayList> createState() => _HoliDayListState();
}

class _HoliDayListState extends State<HoliDayList> {
  List<Holidaylist> holidaylist = [
    Holidaylist("Christmas"),
    Holidaylist("Bhai Duj"),
    Holidaylist("Samvat New Year Day"),
    Holidaylist("Diwali"),
    Holidaylist("Dussehra"),
    Holidaylist("Gandhi Jayanti"),
    Holidaylist("Ganesh Visarjan"),
    Holidaylist("Janmasthami"),
    Holidaylist("Rakshabandhan"),
    Holidaylist("Independence day"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: ListView.builder(
                    itemCount: holidaylist.length,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        holidaylist[index].name,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        "From: 12/07/2021   ",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      const Text(
                                        "From: 12/07/2021",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ]),
                                Row(
                                  children: [
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
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              );   
  }
}