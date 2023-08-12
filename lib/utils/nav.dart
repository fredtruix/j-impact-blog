import 'package:flutter/material.dart';

void goBack(BuildContext context) {
  // killKeyboard(context);
  Navigator.of(context).pop();
}

// void goBack(BuildContext context) {
//   killKeyboard(context);
//   Routemaster.of(context).pop();
// }

// void goTo({
//   required BuildContext context,
//   required String route,
// }) {
//   Routemaster.of(context).push(route);
// }

void goTo({
  required BuildContext context,
  required Widget view,
}) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => view,
  ));
}

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);
  @override
  // TODO: implement barrierColor
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  final Widget child;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
