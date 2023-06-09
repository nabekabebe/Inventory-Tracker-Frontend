import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inventory_tracker/core/widgets/StatusCard.dart';
import 'package:inventory_tracker/data/data.dart';
import 'package:inventory_tracker/domain/controllers/home_controller.dart';
import 'package:inventory_tracker/presentation/screens/Home/widgets/BarChartWrapper.dart';
import 'package:inventory_tracker/presentation/screens/Home/widgets/TransactionListItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeC = HomeController.c;

  bool selected = false;

  Map<int, ChartData> selectedData = weeklyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("GENGO",
                              style: Theme.of(context).textTheme.bodySmall),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "WELCOME, ${homeC.user != null ? homeC.user?.fullName.split(' ')[0].toUpperCase() : "Nabek"}",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.notifications),
                          const SizedBox(
                            width: 8,
                          ),
                          PopupMenuButton(
                              icon: const Icon(Icons.settings),
                              itemBuilder: (ctx) {
                                return <PopupMenuEntry<String>>[
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(Icons.logout),
                                    title: const Text("Logout"),
                                    onTap: () {
                                      homeC.logout();
                                    },
                                  ))
                                ];
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                BarChartWrapper(
                  data: selectedData,
                  widthPercentage: 96,
                  actionWidget: Text(
                    "Last 7 days",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    StatusCard(
                        label: "Low on Stock",
                        amount: 20,
                        message: "13 inventories"),
                    StatusCard(
                        label: "Low in Shop", amount: 10, message: "3 shops"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 4),
                  child: Text(
                    "Orders",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (ctx, int index) {
                      final random = Random();
                      final randomNumber = random.nextInt(9);
                      return index % 4 == 0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0),
                                  child: Text(
                                    "Today",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                TransactionListItem(
                                    soldCount: (index + 1) * randomNumber,
                                    time: "${index + 1}hr ago",
                                    title: names[randomNumber],
                                    money: "$randomNumber.4k")
                              ],
                            )
                          : TransactionListItem(
                              soldCount: (index + 1) * randomNumber,
                              time: "${index + 1}hr ago",
                              title: names[randomNumber],
                              money: "$randomNumber.4k");
                    },
                    itemCount: 10,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
