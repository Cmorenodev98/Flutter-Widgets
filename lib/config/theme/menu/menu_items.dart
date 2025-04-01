import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subTitle;
  final String url;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.url, 
    required this.icon
  });

}


const appMenuItems = <MenuItem>[
  
  MenuItem(
    title: 'Buttons',
    subTitle: 'Different flutter buttons',
    url: '/buttons',
    icon: Icons.smart_button_outlined
    ),

  MenuItem(
    title: 'Cards',
    subTitle: 'Different flutter cards',
    url: '/cards',
    icon: Icons.credit_card
    ),

];

