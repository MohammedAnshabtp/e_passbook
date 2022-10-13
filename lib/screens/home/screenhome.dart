import 'package:e_passbook/screens/category/screen_category.dart';
import 'package:e_passbook/screens/home/widgets/bottom_navigationbar.dart';
import 'package:e_passbook/screens/transaction/screen_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    ScreenTransaction(),
    ScreenCategory(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
          title: Text('Money Manager',
              style: TextStyle(
                color: Colors.white,
              ))),
      bottomNavigationBar: BottomNavigationbar(),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedIndexNotifier,
              builder: (BuildContext context, int updatedIndex, _) {
                return _pages[updatedIndex];
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print("add some");
          } else {
            print('add cat');
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
