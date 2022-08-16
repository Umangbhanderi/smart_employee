import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  List<Leaveconflicts1> leaveconflicts1 = [
    Leaveconflicts1(
        "Umang Bhanderi", "umang1@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Sahil Trambadiya", "sahilt123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Vikas Patel", "vikas123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Bhargav Suhagiya", "bhargav1@gmail.com", "Python", "8511961052"),
    Leaveconflicts1(
        "Piyush Nadoda", "piyush123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Kinjal Gajjar", "kinjal123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Nisha Laniya", "nisha123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Umang Bhanderi", "umang1@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Sahil Trambadiya", "sahilt123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Vikas Patel", "vikas123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Bhargav Suhagiya", "bhargav1@gmail.com", "Python", "8511961052"),
    Leaveconflicts1(
        "Piyush Nadoda", "piyush123@gmail.com", "React", "8511961052"),
    Leaveconflicts1(
        "Kinjal Gajjar", "kinjal123@gmail.com", "Flutter", "8511961052"),
    Leaveconflicts1(
        "Nisha Laniya", "nisha123@gmail.com", "Flutter", "8511961052"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          // shrinkWrap: true,
          // physics: BouncingScrollPhysics(),
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: leaveconflicts1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                              maxRadius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg')),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  leaveconflicts1[index].name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  leaveconflicts1[index].email,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Text(
                                  leaveconflicts1[index].technology,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Text(
                                  leaveconflicts1[index].contect,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Active",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff1BC5BD)),
                            ),
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
                        const Text(
                          "07 May 2021",
                          style: TextStyle(fontSize: 14),
                        ),
                        const Text(
                          "Leave Balance: 19",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
