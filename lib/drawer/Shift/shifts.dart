import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_employees/drawer/Shift/shift_list.dart';
import 'package:smart_employees/drawer/drawer.dart';
import 'package:smart_employees/lists/leaverequestlist.dart';
import 'package:smart_employees/theme/theme_model.dart';
// import 'package:smart_employees/lists/shiftlist.dart';

class Shifts extends StatefulWidget {
  const Shifts({Key? key}) : super(key: key);

  @override
  State<Shifts> createState() => _ShiftsState();
}

class _ShiftsState extends State<Shifts> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifire, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "SHIFTS",
            style: TextStyle(
                fontSize: 20,
                color: themeNotifire.isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          actions: const [Icon(Icons.notifications)],
          iconTheme: IconThemeData(
              color: themeNotifire.isDark ? Colors.white : Colors.black,
              size: 30),
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Card(
                      child: ExpansionTile(
                    title: const Text(
                      "Select Status",
                      style: TextStyle(
                          fontSize: 14, decorationColor: Colors.black),
                    ),
                    children: [
                      Column(
                        children: const [
                          Text("Developer"),
                          Text("Manager"),
                          Text("data")
                        ],
                      )
                    ],
                  )),
                ),
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.black,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.replay_rounded)),
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              scrollable: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              content: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.55,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "ADD SHIFT",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.cancel,
                                              size: 30,
                                            ))
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: Text("Name*",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Name",
                                          hintStyle: TextStyle(fontSize: 14),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: Text("Code",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Code",
                                          hintStyle: TextStyle(fontSize: 14),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: Text("Sift Days*",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            "Submit",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                const Color(0xffFABF3F),
                                              ),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)))),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Add Shifts",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFABF3F)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 15, left: 15, top: 20, bottom: 15),
              child: Card(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search for Shift",
                      hintStyle: TextStyle(fontSize: 14),
                      // errorText: "Plese enter valid data",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ),
            const ShiftList()
          ],
        ),
      );
    });
  }
}
