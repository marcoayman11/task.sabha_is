import 'package:flutter/material.dart';
import 'package:islami_friday_c9/ui/screens/home_screen/tabs/ahadeth/ahadeth_tab.dart';
import 'package:islami_friday_c9/ui/screens/home_screen/tabs/quran/quran_tab.dart';
import 'package:islami_friday_c9/ui/screens/home_screen/tabs/radio/radio_tab.dart';
import 'package:islami_friday_c9/ui/screens/home_screen/tabs/sebha/sebha_tab.dart';
import 'package:islami_friday_c9/ui/utils/app_assets.dart';
import 'package:islami_friday_c9/ui/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.background), fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: const Text("Islami",
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.accent,
                      fontWeight: FontWeight.bold)),
              backgroundColor: AppColors.transparent,
              elevation: 0),
          backgroundColor: AppColors.transparent,
          body: tabs[currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.primiary),
            child: BottomNavigationBar(
              onTap: (index){
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              backgroundColor: AppColors.primiary,
              iconSize: 30,
              selectedItemColor: AppColors.accent,
              items: [
                buildBottomNavigationItem(imagePath: AppAssets.icQuran, label: "Quran"),
                buildBottomNavigationItem(imagePath: AppAssets.icAhadeth, label: "Ahadeth"),
                buildBottomNavigationItem(imagePath: AppAssets.icSebha, label: "Sebha"),
                buildBottomNavigationItem(imagePath: AppAssets.icRadio, label: "Radio"),
              ],
            ),
          ),
        ));
  }

  BottomNavigationBarItem buildBottomNavigationItem({
    required String imagePath,
    required String label}) =>
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(imagePath)), label: label);
}
