import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:jimpact/features/groups/views/open_group_view.dart';
import 'package:jimpact/theme/palette.dart';
import 'package:jimpact/utils/app_constants.dart';
import 'package:jimpact/utils/app_extensions.dart';
import 'package:jimpact/utils/nav.dart';
import 'package:jimpact/utils/widgets/button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SizedBox(
      height: height(context),
      width: width(context),
      child: Stack(
        children: [
          SizedBox(
            height: height(context),
            width: width(context),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  150.sbH,
                  //! profile image
                  Container(
                    height: 115.h,
                    width: 115.w,
                    decoration: BoxDecoration(
                      color: Pallete.redColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  16.sbH,

                  //! user name
                  '@starcytray'.txt(
                    size: 20.sp,
                    fontWeightType: TxtFntWt.med,
                    colorType: TxtClrType.g41,
                  ),
                  4.sbH,
                  'Tracy Chapman'.txt14(
                    color: Pallete.greyA7,
                  ),
                  16.sbH,

                  //! bio
                  Padding(
                    padding: 34.padH,
                    child:
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy elitr'
                            .txt14(
                      color: Pallete.greyA7,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  24.sbH,

                  //! edit profile
                  BButton(
                    onTap: () {},
                    height: 40.h,
                    width: 130.w,
                    radius: 5.r,
                    text: 'Edit Profile',
                    fontWeight: FontWeight.w400,
                    color: Pallete.greyC9,
                  ),
                  63.sbH,

                  Container(
                    height: 36.h,
                    width: 280.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Pallete.whiteColor,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: -5,
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: tabController,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Pallete.redColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      labelColor: Pallete.whiteColor,
                      unselectedLabelColor: Pallete.greyA7,
                      labelStyle: TextStyle(
                        fontSize: 17.sp,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 15.sp,
                      ),
                      tabs: const [
                        Tab(
                          text: 'Posts',
                        ),
                        Tab(
                          text: 'Groups',
                        ),
                      ],
                    ),
                  ),
                  39.sbH,

                  SizedBox(
                    height: 500,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        const Placeholder(),

                        //! groups
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              //! open group
                              Padding(
                                padding: 34.padH,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Open Groups'.txt(
                                      size: 17.sp,
                                      fontWeightType: TxtFntWt.med,
                                      color: Pallete.greyA7,
                                    ),
                                    'View All'
                                        .txt(
                                      size: 17.sp,
                                      fontWeightType: TxtFntWt.med,
                                      color: Pallete.redColor,
                                    )
                                        .tap(onTap: () {
                                      goTo(
                                          context: context,
                                          view: const OpenGroupsView());
                                    }),
                                  ],
                                ),
                              ),
                              17.sbH,

                              //! open groups list view
                              SizedBox(
                                height: 260.h,
                                width: double.infinity,
                                child: ListView.builder(
                                  padding:
                                      EdgeInsets.only(left: 34.w, right: 17.w),
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
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: Stack(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Placeholder(
                                              color:
                                                  Pallete.textInputFillGreyEE,
                                            ),
                                          ),
                                          Container(
                                            height: 260.h,
                                            width: 170.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              //! title
                                              Padding(
                                                padding: 16.padH,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    'For Her'.txt16(
                                                      fontWeightType:
                                                          TxtFntWt.med,
                                                      color: Pallete.whiteColor,
                                                    ),
                                                    3.sbH,
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            PhosphorIcons
                                                                .userFill,
                                                            size: 14.sp,
                                                            color: Pallete
                                                                .whiteColor),
                                                        6.6.sbW,
                                                        '12 Members'.txt(
                                                            size: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Pallete
                                                                .whiteColor),
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
                                                          color: Pallete
                                                              .whiteColor),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Closed Groups'.txt(
                                      size: 17.sp,
                                      fontWeightType: TxtFntWt.med,
                                      color: Pallete.greyA7,
                                    ),
                                    'View All'
                                        .txt(
                                      size: 17.sp,
                                      fontWeightType: TxtFntWt.med,
                                      color: Pallete.redColor,
                                    )
                                        .tap(onTap: () {
                                      goTo(
                                          context: context,
                                          view: const OpenGroupsView());
                                    }),
                                  ],
                                ),
                              ),
                              17.sbH,

                              //! closed groups list view
                              SizedBox(
                                height: 260.h,
                                width: double.infinity,
                                child: ListView.builder(
                                  padding:
                                      EdgeInsets.only(left: 34.w, right: 17.w),
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
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: Stack(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Placeholder(
                                              color:
                                                  Pallete.textInputFillGreyEE,
                                            ),
                                          ),
                                          Container(
                                            height: 260.h,
                                            width: 170.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              //! title
                                              Padding(
                                                padding: 16.padH,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    'For Her'.txt16(
                                                      fontWeightType:
                                                          TxtFntWt.med,
                                                      color: Pallete.whiteColor,
                                                    ),
                                                    3.sbH,
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            PhosphorIcons
                                                                .userFill,
                                                            size: 14.sp,
                                                            color: Pallete
                                                                .whiteColor),
                                                        6.6.sbW,
                                                        '12 Members'.txt(
                                                            size: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Pallete
                                                                .whiteColor),
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
                                                          color: Pallete
                                                              .whiteColor),
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
                      ],
                    ),
                  ),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  PhosphorIcons.listBold,
                  color: Pallete.textBlack54,
                ).tap(onTap: () {
                  Scaffold.of(context).openDrawer();
                })
              ],
            ),
          ).asGlass(
            tintColor: Pallete.whiteColor.withOpacity(0.5),
            blurX: 5,
            blurY: 5,
          ),
        ],
      ),
    );
  }
}
