import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
   final String title;
   final List<IconButton>? actionIcon;

  const CustomAppbar({
    required this.title, this.actionIcon,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.indigo[900],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
