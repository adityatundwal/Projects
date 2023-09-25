import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          tabs: const [
            GButton(
              icon: Icons.dashboard,
              text: 'Dashboard',
            ),
            GButton(
              icon: Icons.credit_card,
              text: 'Credit Cards',
            ),
            GButton(icon: Icons.currency_rupee, text: 'Transactions'),
            GButton(
              icon: Icons.help_center_outlined,
              text: 'Help Center',
            ),
          ],
          backgroundColor: Colors.black,
          tabBackgroundColor: Colors.grey.shade100,
          color: Colors.white,
          duration: Duration(milliseconds: 100),
          gap: 8,
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
