import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      IconData mIcons, String mTitle, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        mIcons,
        size: 26,
      ),
      title: Text(
        mTitle,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        tapHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.secondary,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          buildListTile(Icons.restaurant, 'Meals', () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          buildListTile(Icons.settings, 'Filters', () {
            Navigator.pushReplacementNamed(context, FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
