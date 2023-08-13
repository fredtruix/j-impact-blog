import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jimpact/features/home/views/home_feed_view.dart';
import 'package:jimpact/utils/app_extensions.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

///! the state notifier provider for controlling the state of the base nav wrapper
final baseNavControllerProvider =
    StateNotifierProvider<BaseNavController, int>((ref) {
  return BaseNavController();
});

//! the state notifier class for controlling the state of the base nav wrapper
class BaseNavController extends StateNotifier<int> {
  BaseNavController() : super(0);

  //! move to page
  void moveToPage({required int index}) {
    state = index;
  }
}

//! () => move to page
void moveToPage({
  required BuildContext context,
  required WidgetRef ref,
  required int index,
}) {
  ref.read(baseNavControllerProvider.notifier).moveToPage(index: index);
}

//! List of pages
List<Widget> pages = [
  const HomeFeedView(),
  Center(child: 'search'.txt()),
  Center(child: 'explore'.txt()),
  Center(child: 'notif'.txt()),
  Center(child: 'person'.txt()),
];

//! nav widget enums
enum Nav {
  home(PhosphorIcons.houseSimpleBold, PhosphorIcons.houseSimpleFill),
  search(PhosphorIcons.magnifyingGlassBold, PhosphorIcons.magnifyingGlassBold),
  connect(PhosphorIcons.pen, PhosphorIcons.pen),
  notification(PhosphorIcons.notificationBold, PhosphorIcons.notificationFill),
  profile(PhosphorIcons.userBold, PhosphorIcons.userFill);

  const Nav(
    this.icon,
    this.selectedIcon,
  );
  final IconData icon;
  final IconData selectedIcon;
}

List<Nav> nav = [
  Nav.home,
  Nav.search,
  Nav.connect,
  Nav.notification,
  Nav.profile,
];
