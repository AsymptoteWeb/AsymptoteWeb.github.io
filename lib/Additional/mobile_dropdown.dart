import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [projects, services,];
  static const List<MenuItem> secondItems = [contactUs];

  static const projects = MenuItem(text: 'Projects', icon: Icons.villa);
  static const services = MenuItem(text: 'Services', icon: Icons.construction);
  static const contactUs = MenuItem(text: 'Contact Us', icon: Icons.contact_mail);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item, List<GlobalKey> scrollKeyValue) {
    switch (item) {
      case MenuItems.projects:
        Scrollable.ensureVisible(scrollKeyValue[0].currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
        break;
      case MenuItems.services:
        Scrollable.ensureVisible(scrollKeyValue[1].currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
        break;
      case MenuItems.contactUs:
        Scrollable.ensureVisible(scrollKeyValue[2].currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
        break;
    }
  }
}