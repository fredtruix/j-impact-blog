import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jimpact/features/profile/views/join_community_view.dart';
import 'package:jimpact/theme/palette.dart';
import 'package:jimpact/utils/app_extensions.dart';
import 'package:jimpact/utils/nav.dart';
import 'package:jimpact/utils/widgets/appbar.dart';
import 'package:jimpact/utils/widgets/button.dart';
import 'package:jimpact/utils/widgets/myicon.dart';
import 'package:simple_notifier/simple_notifier.dart';

class InterestsSelectionView extends ConsumerStatefulWidget {
  const InterestsSelectionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InterestsSelectionViewState();
}

class _InterestsSelectionViewState
    extends ConsumerState<InterestsSelectionView> {
  ValueNotifier<List<String>> selectedInterests = [''].notifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Your interests', context: context),
      body: SizedBox.expand(
        child: Padding(
          padding: 32.padH,
          child: Column(
            children: [
              30.sbH,
              'Welcome Broski'
                  .txt18(
                    color: Pallete.redColor,
                    fontWeightType: TxtFntWt.med,
                  )
                  .alignCenterLeft(),
              27.sbH,

              //! what
              'What are you interested in?'
                  .txt(
                    size: 32.sp,
                    colorType: TxtClrType.g41,
                    fontWeight: FontWeight.w300,
                  )
                  .alignCenterLeft(),
              14.sbH,

              //! select 5 more
              'Select one or more categories you are interested in'
                  .txt18(
                    colorType: TxtClrType.g78,
                    fontWeight: FontWeight.w300,
                  )
                  .alignCenterLeft(),

              48.sbH,
              selectedInterests.listen(
                builder: (context, value, child) => Wrap(
                  spacing: 16.w,
                  runSpacing: 16.h,
                  children: List.generate(
                    interests.length,
                    (index) => Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 27.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        color: switch (selectedInterests.value
                            .contains(interests[index])) {
                          true => Pallete.redColor,
                          false => Pallete.boxGrey,
                        },
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          MyIcon(
                            icon: interests[index],
                            height: 16.6.h,
                            color: switch (selectedInterests.value
                                .contains(interests[index])) {
                              true => Pallete.whiteColor,
                              false => null,
                            },
                          ),
                          11.5.sbW,
                          interests[index].toCapitalized().txt16(
                                color: switch (selectedInterests.value
                                    .contains(interests[index])) {
                                  true => Pallete.whiteColor,
                                  false => Pallete.textBlack54,
                                },
                              )
                        ],
                      ),
                    ).tap(onTap: () {
                      if (selectedInterests.value.contains(interests[index])) {
                        selectedInterests.value = [
                          ...selectedInterests.value.where(
                              (interest) => interest != interests[index]),
                        ];
                      } else {
                        selectedInterests.value = [
                          interests[index],
                          ...selectedInterests.value
                        ];
                      }
                    }),
                  ),
                ).alignCenterLeft(),
              ),

              200.sbH,
              ArrowButton(
                onTap: () {
                  goTo(context: context, view: const JoinCommunityView());
                },
                width: 160.w,
                text: 'Next',
              ).alignCenterLeft(),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> interests = [
  'faith',
  'love',
  'prayer',
  'resurrection',
];
