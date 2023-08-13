// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:jimpact/features/home/widgets/search_bar.dart';
import 'package:jimpact/utils/widgets/button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:jimpact/theme/palette.dart';
import 'package:jimpact/utils/app_constants.dart';
import 'package:jimpact/utils/app_extensions.dart';

class HomeFeedView extends ConsumerWidget {
  const HomeFeedView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: height(context),
      width: width(context),
      child: Stack(
        children: [
          //! body
          SizedBox(
            height: height(context),
            width: width(context),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 150.h, bottom: 30.h),
                    color: Pallete.textInputFillGreyEE,
                    child: Column(
                      children: [
                        //! popular roww
                        Padding(
                          padding: 34.padH,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              'Popular Blogs'.txt16(
                                fontWeightType: TxtFntWt.med,
                                colorType: TxtClrType.g54,
                              ),
                              'See all'.txt(
                                size: 13.sp,
                                fontWeightType: TxtFntWt.med,
                                colorType: TxtClrType.g54,
                              ),
                            ],
                          ),
                        ),

                        29.sbH,
                        //! blogs list view
                        SizedBox(
                          height: 290.h,
                          width: double.infinity,
                          child: ListView.builder(
                            padding: EdgeInsets.only(left: 34.w, right: 17.w),
                            scrollDirection: Axis.horizontal,
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: 16.w, bottom: 2.h),
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  child: Container(
                                    height: 290.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                      color: Pallete.whiteColor,
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Placeholder(
                                            fallbackHeight: 124.h,
                                            color: Pallete.textInputFillGreyEE,
                                          ),
                                        ),
                                        16.sbH,

                                        //! title
                                        Padding(
                                          padding: 16.padH,
                                          child: Column(
                                            children: [
                                              'The Reason for the Season'.txt(
                                                size: 13.sp,
                                                fontWeightType: TxtFntWt.med,
                                                colorType: TxtClrType.g54,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              8.sbH,
                                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed'
                                                  .txt(
                                                size: 11.sp,
                                                fontWeightType: TxtFntWt.reg,
                                                colorType: TxtClrType.g78,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              16.sbH,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  'Jesus Impact'.txt(
                                                    size: 10.sp,
                                                    fontWeightType:
                                                        TxtFntWt.med,
                                                    colorType: TxtClrType.g54,
                                                  ),
                                                  Row(
                                                    children: [
                                                      '12'.txt(
                                                          size: 12.sp,
                                                          fontWeightType:
                                                              TxtFntWt.med,
                                                          color:
                                                              Pallete.redColor),
                                                      5.sbW,
                                                      Icon(
                                                          PhosphorIcons
                                                              .userFill,
                                                          size: 14.sp,
                                                          color:
                                                              Pallete.redColor),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  48.sbH,
                  Padding(
                    padding: 34.padH,
                    child: 'Explore Connect Groups'
                        .txt(
                          size: 30.sp,
                          fontWeight: FontWeight.w300,
                          colorType: TxtClrType.g41,
                        )
                        .alignCenterLeft(),
                  ),
                  16.sbH,
                  Padding(
                    padding: 34.padH,
                    child:
                        'Connect with other with similar interest by joining any of the open or closed connect groups'
                            .txt16(
                                fontWeight: FontWeight.w300,
                                colorType: TxtClrType.g78),
                  ),
                  48.sbH,

                  //! search
                  const SearchBarr(),
                  42.sbH,

                  //! open group
                  Padding(
                    padding: 34.padH,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Open Groups'.txt(
                          size: 17.sp,
                          fontWeightType: TxtFntWt.med,
                          color: Pallete.greyA7,
                        ),
                        'View All'.txt(
                          size: 17.sp,
                          fontWeightType: TxtFntWt.med,
                          color: Pallete.redColor,
                        )
                      ],
                    ),
                  ),
                  17.sbH,

                  //! open groups list view
                  SizedBox(
                    height: 260.h,
                    width: double.infinity,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 34.w, right: 17.w),
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 260.h,
                          width: 170.w,
                          margin: EdgeInsets.only(right: 16.w),
                          decoration: BoxDecoration(
                            color: Pallete.blackColor,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Placeholder(
                                  color: Pallete.textInputFillGreyEE,
                                ),
                              ),
                              Container(
                                height: 260.h,
                                width: 170.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5),
                                      Colors.black
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  //! title
                                  Padding(
                                    padding: 16.padH,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        'For Her'.txt16(
                                          fontWeightType: TxtFntWt.med,
                                          color: Pallete.whiteColor,
                                        ),
                                        3.sbH,
                                        Row(
                                          children: [
                                            Icon(PhosphorIcons.userFill,
                                                size: 14.sp,
                                                color: Pallete.whiteColor),
                                            6.6.sbW,
                                            '12 Members'.txt(
                                                size: 14.sp,
                                                fontWeight: FontWeight.w300,
                                                color: Pallete.whiteColor),
                                            5.sbW,
                                          ],
                                        ),
                                        8.sbH,
                                        BButton(
                                          onTap: () {},
                                          height: 26.h,
                                          width: 50.w,
                                          radius: 5.r,
                                          isText: false,
                                          item: 'Join'.txt(
                                              size: 15.sp,
                                              color: Pallete.whiteColor),
                                        ),
                                        22.sbH,
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  46.sbH,

                  //! closed group
                  Padding(
                    padding: 34.padH,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Closed Groups'.txt(
                          size: 17.sp,
                          fontWeightType: TxtFntWt.med,
                          color: Pallete.greyA7,
                        ),
                        'View All'.txt(
                          size: 17.sp,
                          fontWeightType: TxtFntWt.med,
                          color: Pallete.redColor,
                        )
                      ],
                    ),
                  ),
                  17.sbH,

                  //! closed groups list view
                  SizedBox(
                    height: 260.h,
                    width: double.infinity,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 34.w, right: 17.w),
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 260.h,
                          width: 170.w,
                          margin: EdgeInsets.only(right: 16.w),
                          decoration: BoxDecoration(
                            color: Pallete.blackColor,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Placeholder(
                                  color: Pallete.textInputFillGreyEE,
                                ),
                              ),
                              Container(
                                height: 260.h,
                                width: 170.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5),
                                      Colors.black
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  //! title
                                  Padding(
                                    padding: 16.padH,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        'For Her'.txt16(
                                          fontWeightType: TxtFntWt.med,
                                          color: Pallete.whiteColor,
                                        ),
                                        3.sbH,
                                        Row(
                                          children: [
                                            Icon(PhosphorIcons.userFill,
                                                size: 14.sp,
                                                color: Pallete.whiteColor),
                                            6.6.sbW,
                                            '12 Members'.txt(
                                                size: 14.sp,
                                                fontWeight: FontWeight.w300,
                                                color: Pallete.whiteColor),
                                            5.sbW,
                                          ],
                                        ),
                                        8.sbH,
                                        BButton(
                                          onTap: () {},
                                          height: 26.h,
                                          width: 50.w,
                                          radius: 5.r,
                                          isText: false,
                                          item: 'Join'.txt(
                                              size: 15.sp,
                                              color: Pallete.whiteColor),
                                        ),
                                        22.sbH,
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  60.sbH,
                ],
              ),
            ),
          ),

          //! header
          Container(
            height: 125.h,
            width: width(context),
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 34.w)
                .copyWith(bottom: 7.h, top: 66.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 31.h,
                  width: 31.h,
                  decoration: BoxDecoration(
                      color: Pallete.redColor,
                      borderRadius: BorderRadius.circular(7.r)),
                ),

                //!
                Row(
                  children: [
                    CircleAvatar(
                      radius: 13.h,
                      backgroundColor: Pallete.redColor,
                      child: Icon(
                        PhosphorIcons.plusBold,
                        size: 20.sp,
                        color: Pallete.whiteColor,
                      ),
                    ),
                    42.sbW,
                    const Icon(
                      PhosphorIcons.listBold,
                      color: Pallete.textBlack54,
                    )
                  ],
                )
              ],
            ),
          ).asGlass(
            tintColor: Pallete.textInputFillGreyEE.withOpacity(0.5),
            blurX: 5,
            blurY: 5,
          ),
        ],
      ),
    );
  }
}
