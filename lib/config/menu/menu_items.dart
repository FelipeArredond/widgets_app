import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subTittle;
  final String url;
  final IconData icon;

  const MenuItem(
      {required this.tittle,
      required this.subTittle,
      required this.url,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      icon: Icons.smart_button_outlined,
      tittle: 'Botones',
      subTittle: 'Varios botones en flutter',
      url: '/buttons'
  ),
  MenuItem(
      icon: Icons.smart_button_outlined,
      tittle: 'Tarjetas',
      subTittle: 'Un contenedor estilizado',
      url: '/cards'
  ),
];
