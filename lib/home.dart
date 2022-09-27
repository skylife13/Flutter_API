import 'package:flutter/material.dart';
import 'package:flutter_api/menu_outlet/Keluar.dart';
import 'package:flutter_api/menu_outlet/Mutasi.dart';
import 'package:flutter_api/menu_outlet/Pindah.dart';
import 'package:flutter_api/menu_outlet/kurs.dart';
import 'package:flutter_api/menu_outlet/masuk.dart';
import 'package:flutter_api/shared/StickyLabel.dart';

import 'package:flutter_api/shared/constant.dart';

class Home extends StatefulWidget {
  static const routeName = '/Home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

final tab = TabBar(
    indicatorColor: Colors.grey,
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    tabs: <Tab>[
      Tab(
          icon: Image.asset(
        'assets/house.png',
      )),
      const Tab(
        icon: Icon(
          Icons.refresh,
        ),
      ),
      const Tab(icon: Icon(Icons.arrow_back)),
    ]);

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var index = DefaultTabController.of(context)?.index;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            leading: null,
            title: const Center(
              child: Text(
                "APP KEUANGAN",
                style: TextStyle(color: linear),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: null,
                  icon: Image.asset('assets/lonceng_notif.png')),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Home()), // this mymainpage is your page to refresh
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(
                  Icons.refresh,
                  color: linear,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            bottom: TabBar(
                indicatorColor: Colors.grey,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: <Tab>[
                  Tab(
                      icon: Image.asset('assets/house.png',
                          color: DefaultTabController.of(context)?.index != 1
                              ? Colors.grey
                              : linear)),
                  Tab(
                    icon: Icon(
                      Icons.refresh,
                      color: index != 2 ? Colors.grey : linear,
                    ),
                  ),
                  Tab(
                      icon: Icon(
                    Icons.arrow_back,
                    color: index != 3 ? Colors.grey : linear,
                  )),
                ])),
        // drawer: Drawer(child: MainDrawer()),
        backgroundColor: linear,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Card(
                  child: ListTile(
                    title: Text('Nama Outlet', style: TextStyle(color: linear)),
                    subtitle: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.money),
                            Text('IDR'),
                            Text(
                                '\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t  500.000'),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.money),
                            Text('USD'),
                            Text(
                                '\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t 0'),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.money),
                            Text('EUR'),
                            Text(
                                '\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t 20.000'),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.money),
                            Text('SGD'),
                            Text(
                                '\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t 6.000'),
                          ],
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              StickyLabel(
                text: "Menu",
                textColor: kPrimaryColor,
              ),
              Container(
                height: 220.0,
                padding: EdgeInsets.only(top: 14.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                  ),
                  itemCount: menuLabel.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              menuIcons[index],
                              color: Colors.white,
                            ),
                            onPressed: () {
                              if (index == 0) {
                                Navigator.of(context)
                                    .pushNamed(Masuk.routeName);
                              }
                              if (index == 1) {
                                Navigator.of(context)
                                    .pushNamed(Keluar.routeName);
                              }
                              if (index == 2) {
                                Navigator.of(context)
                                    .pushNamed(Pindah.routeName);
                              }
                              if (index == 3) {
                                Navigator.of(context)
                                    .pushNamed(Mutasi.routeName);
                              }
                              if (index == 4) {
                                Navigator.of(context).pushNamed(Kurs.routeName);
                              }
                            }),
                        Text(
                          menuLabel[index],
                          style: TextStyle(color: kLightColor, fontSize: 10),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Container(
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           IconButton(
              //               icon: Icon(Icons.house,
              //                   color: Colors.white, size: 30.0),
              //               onPressed: () {
              //                 Navigator.of(context).pushNamed(Masuk.routeName);
              //               }),
              //           IconButton(
              //               icon: Icon(Icons.house,
              //                   color: Colors.white, size: 30.0),
              //               onPressed: () {}),
              //           IconButton(
              //               icon: Icon(Icons.house,
              //                   color: Colors.white, size: 30.0),
              //               onPressed: () {}),
              //           IconButton(
              //               icon: Icon(Icons.house,
              //                   color: Colors.white, size: 30.0),
              //               onPressed: () {}),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Text("Masuk"),
              //           Text("\tKeluar"),
              //           Text("\tPindah"),
              //           Text("\tMasuk"),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
