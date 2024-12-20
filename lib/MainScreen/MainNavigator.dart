import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Account.dart';
import 'Dashboard.dart';
import 'Patients.dart';
import 'Pharmacy.dart';
import 'Specialist.dart';

class MainNavigator extends StatefulWidget {
  MainNavigator({super.key, required int index});

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late final List<Widget> _screens = [
    Dashboard(onItemTapped: _onItemTapped),
    Patients(),
    Specialist(),
    Pharmacy(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) => _onItemTapped(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/images/s_home.svg'
                    : 'assets/images/un_home.svg',
                width: getFontSize(28, context),
                height: getFontSize(28, context),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 1
                    ? 'assets/images/s_patient.svg'
                    : 'assets/images/un_patient.svg',
                width: getFontSize(28, context),
                height: getFontSize(28, context),
              ),
              label: 'Patients',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 2
                    ? 'assets/images/s_specialist.svg'
                    : 'assets/images/un_specialist.svg',
                width: getFontSize(28, context),
                height: getFontSize(28, context),
              ),
              label: 'Specialist',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 3
                    ? 'assets/images/s_pharmacy.svg'
                    : 'assets/images/un_pharmacy.svg',
                width: getFontSize(28, context),
                height: getFontSize(28, context),
              ),
              label: 'Pharmacy',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 3
                    ? 'assets/images/un_account.svg'
                    : 'assets/images/s_account.svg',
                width: getFontSize(28, context),
                height: getFontSize(28, context),
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      home: MainNavigator(
    index: 0,
  )));
}
