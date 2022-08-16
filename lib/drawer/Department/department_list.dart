import 'package:flutter/material.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';

class DepartmentList extends StatefulWidget {
  const DepartmentList({Key? key}) : super(key: key);

  @override
  State<DepartmentList> createState() => _DepartmentListState();
}

class _DepartmentListState extends State<DepartmentList> {
   List<Departmentslist> departmentslist = [
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
    Departmentslist(".NET", "Code : .net"),
    Departmentslist("Flutter", "Code : dart"),
    Departmentslist("PHP", "Code : php"),
    Departmentslist("SEO", "Code : seo"),
  ];
  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: ListView.builder(
         itemCount: departmentslist.length,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.only(left: 10, right: 10),
             child: Card(
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)),
               child: Padding(
                 padding: const EdgeInsets.only(
                     top: 10, bottom: 10, left: 5),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           departmentslist[index].technology,
                           style: const TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold),
                         ),
                         Text(
                           departmentslist[index].code,
                           style: const TextStyle(fontSize: 14),
                         ),
                         const Text(
                           "Date : 12/07/2021",
                           style: TextStyle(fontSize: 14),
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