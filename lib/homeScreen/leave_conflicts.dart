import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class LeaveConfilctsList extends StatefulWidget {
  const LeaveConfilctsList({Key? key}) : super(key: key);

  @override
  State<LeaveConfilctsList> createState() => _LeaveConfilctsListState();
}

class _LeaveConfilctsListState extends State<LeaveConfilctsList> {
   List<Leaveconflicts> leaveconflicts = [
    Leaveconflicts("Umang Bhanderi", "Casual Leave (CL)", "26/4", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts(
        "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
         Leaveconflicts("Umang Bhanderi", "Casual Leave (CL)", "26/4", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts("Krupali Patel", "Madical Leave (ML)", "08/08", "12/07/2021",
        "12/07/2021"),
    Leaveconflicts(
        "Sahil Trambadiya", "address", "date", "12/07/2021", "12/07/2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250,
      child: ListView.builder(
          shrinkWrap: true,
          // physics: BouncingScrollPhysics(),
          // physics: NeverScrollableScrollPhysics(),
          itemCount: leaveconflicts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            leaveconflicts[index].name,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.more_vert_rounded)
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              leaveconflicts[index].address,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                          Text(
                            "Leave Balance: 12",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            leaveconflicts[index].date,
                            style: const TextStyle(fontSize: 14),
                          ),
                          const Text(
                            "Day: 01",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
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