import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/core/helper/constances.dart';
import 'package:mega_store/feature/home/controller/nav_cubit.dart';

import 'widgets/nav_widgets/bottom_nav_bar.dart';

class NavigationsScreen extends StatelessWidget {
  const NavigationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigations = BlocProvider.of<NavCubit>(context);
    return BlocBuilder<NavCubit, NavState>(
      builder: (context, state) {
        return Scaffold(
          body: Constances.screens[navigations.index],
          bottomNavigationBar: BottomNavBar(navigations: navigations),
        );
      },
    );
  }
}
