import 'package:flutter/material.dart';

class DefaultAppbar extends StatelessWidget {
  const DefaultAppbar(
      {Key? key,
      required this.title,
      this.iconbutton,
      this.BG = Colors.white,
      this.txtcolor = Colors.black})
      : super(key: key);
  final Widget title;
  final Widget? iconbutton;
  final Color? BG;

  final Color? txtcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: BG,
        title: title,
        leading: iconbutton,
      ),
    );
  }
}
