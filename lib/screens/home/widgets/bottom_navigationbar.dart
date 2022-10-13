import 'package:e_passbook/screens/home/screenhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavigationbar extends StatelessWidget {
  const BottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ScreenHome.selectedIndexNotifier,
        builder: (BuildContext ctx, int updatedIndex, Widget? _) {
          return BottomNavigationBar(
            selectedItemColor: Colors.orange[800],
            unselectedItemColor: Colors.grey,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              ScreenHome.selectedIndexNotifier.value = newIndex;
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Transaction'),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
            ],
          );
        });
  }
}
