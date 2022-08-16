import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class LeaveRequestLists extends StatefulWidget {
  const LeaveRequestLists({Key? key}) : super(key: key);

  @override
  State<LeaveRequestLists> createState() => _LeaveRequestListsState();
}

class _LeaveRequestListsState extends State<LeaveRequestLists> {
  List<Leaveconflicts> leaveconflicts = [
    Leaveconflicts("Umang Bhanderi", "Casual Leave (CL)", "26/4", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts(
        "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
    Leaveconflicts(
        "preetesh", "Casual Leave (CL)", "26/4", "12/07/2021", "12/07/2021"),
    Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts(
        "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      child: ListView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          physics: BouncingScrollPhysics(),
          itemCount: leaveconflicts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child:
                      // Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // children: [
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            leaveconflicts[index].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_vert_rounded)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            leaveconflicts[index].address,
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Leave Balance: 12",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "From: 12/07/2021",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Day: 01",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Text(
                        "To: 12/07/2021",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                 
                ),
              ),
            );
          }),
    );
  }
}
