import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.route, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>[
  
  MenuItem(
    title: 'Buttons',
    subTitle: 'Different flutter buttons',
    route: '/buttons',
    icon: Icons.smart_button_outlined
    ),

  MenuItem(
    title: 'Cards',
    subTitle: 'Different flutter cards',
    route: '/cards',
    icon: Icons.credit_card
    ),

];

