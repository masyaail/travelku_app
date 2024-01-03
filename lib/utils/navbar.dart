// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travelku/pages/history.dart';
import 'package:travelku/pages/plan_list.dart';
import 'package:travelku/pages/your_categories.dart';

// class DataPlaces {
//   ListPlace dataPlaces;
//   int currentPage;
//   DataPlaces({
//     required this.dataPlaces,
//     required this.currentPage,
//   });
// }
//  DataPlaces({
//     required this.dataPlaces,
//     required this.currentPage,
//   });
// }
class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: const Color.fromRGBO(28, 63, 133, 1),
            child: InkWell(
              onTap: (){},
              child: ListView(children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.category_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Your Categories',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const YourCategories(),
                        ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.list_rounded, color: Colors.white),
                  title: const Text('Plan List',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlanList(),
                        ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.history_rounded, color: Colors.white),
                  title: const Text('History',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()));
                  },
                ),
              ]),
            )));
  }
}
