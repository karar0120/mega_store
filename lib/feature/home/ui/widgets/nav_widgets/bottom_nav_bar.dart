import 'package:flutter/material.dart';
import 'package:mega_store/core/theming/color.dart';
import 'package:mega_store/feature/home/controller/nav_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.navigations,
  });

  final NavCubit navigations;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        navigations.changeIndex(index);
      },
      currentIndex: navigations.index,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.white,
      selectedItemColor: ColorsManager.darkBlue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer_sharp),
          label: 'offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'favourites',
        )
      ],
    );
  }
}
