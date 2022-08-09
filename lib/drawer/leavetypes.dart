import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';
// import 'package:smart_employees/lists/leavetypelist.dart';

class Leavetypes extends StatefulWidget {
  const Leavetypes({Key? key}) : super(key: key);

  @override
  State<Leavetypes> createState() => _LeavetypesState();
}

class _LeavetypesState extends State<Leavetypes> {
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
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            actions: const [
              Icon(Icons.notifications),
            ],
            iconTheme: IconThemeData(
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                size: 40),
            title:  Text(
              "LEAVE TYPES",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: themeNotifire.isDark? Colors.white : Colors.black),
            ),
          ),
          drawer: const DrawerWidget(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.82,
                      child: const Card(
                        child: ExpansionTile(
                            title: Text(
                          "Select Status",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.replay_rounded),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, right: 15, left: 15, bottom: 15),
                child: Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search for Leave Type",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Expanded(
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
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        leavetypelist[index].code,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      );
    });
  }
}
