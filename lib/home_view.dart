import 'package:flutter/material.dart';
import 'package:pavillion_reward/homepage_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Hompage(),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 1,
            showUnselectedLabels: true,
            // backgroundColor: Colors.black,
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Payment",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "Payment"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: "Cards"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
            currentIndex: 0,
            onTap: (index) {}));
  }
}
