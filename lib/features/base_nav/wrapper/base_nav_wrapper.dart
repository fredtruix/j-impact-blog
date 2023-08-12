import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:jimpact/theme/palette.dart';
import 'package:jimpact/utils/app_constants.dart';
import 'package:jimpact/utils/loader.dart';

class BaseNavWrapper extends ConsumerWidget {
  const BaseNavWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Pallete.whiteColor,
      // pages
      body: Container(),
      //  pages[indexFromController],

      // nav bar
      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          color: Pallete.whiteColor,
          padding: const EdgeInsets.only(top: 17, left: 17, right: 17),
          height: 80,
          width: width(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // children: List.generate(
            //   nav.length,
            //   (index) => NavBarWidget(nav: nav[index]),
            // ),
          ),
        ),
      ),
    );
  }
}
