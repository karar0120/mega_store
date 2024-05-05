import 'package:flutter/material.dart';
import 'package:mega_store/feature/home/ui/widgets/home/ui/home_screens.dart';
import 'package:mega_store/feature/home/ui/widgets/offers/ui/offers_screens.dart';
import 'package:mega_store/feature/home/ui/widgets/profile/ui/profile_screen.dart';

import '../../feature/home/ui/widgets/fav/ui/fav_screen.dart';

class Constances {
  static const noRouteFound = "noRouteFound";

  static const noRecoredsFound = "No Records Found";
  static const clientCredentials = "client_credentials";
  static const accessToken = "accessToken";
  static const empty = '';
  static const int zero = 0;
  static const double zeroPoint = 0.0;

  static List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const OffersScreen(),
    const FavScreen(),
  ];
}
