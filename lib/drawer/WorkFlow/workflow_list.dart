import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class WorkFlowList extends StatefulWidget {
  const WorkFlowList({Key? key}) : super(key: key);

  @override
  State<WorkFlowList> createState() => _WorkFlowListState();
}

class _WorkFlowListState extends State<WorkFlowList> {
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
      return Expanded(
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Created Date: 07 May 2021",
                                        style: TextStyle(fontSize: 14),
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
                                                        TextStyle(fontSize: 14),
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
                          ),
                        ),
                      );
                    }));   
  }
}