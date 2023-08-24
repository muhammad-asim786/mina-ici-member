import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/home_screen/widget.dart';
import 'package:nima_comunity_member_app/screens/logout/logout.dart';

import 'package:provider/provider.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../community_leaders_screen/community_leaders_screen.dart';
import '../community_suggestion/community_suggestion_screen.dart';
import '../coummunity_agenda_screen/community_agenda_screen.dart';
import '../fighting_opposing_agenda_screen/fighting_opposing_agenda_screen.dart';
import '../petition_1_screen/petion_1_screen.dart';
import '../petition_votes/petition_votes_screen.dart';
import '../video_confrence/video_confrence.dart';
import '../vote_1_screen/vote_1_screen.dart';
import '../votes_screen/votes_screen.dart';
import '../widgets/coomon_container.dart';
import 'home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: Consumer<HomeScreenProvider>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: lighBlackColor,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CommonContainer(
                                text: "Profile Photo",
                                height: 95.h,
                                width: 113.w,
                                radius: 13.r,
                              ),
                              SizedBox(height: 5.h),
                              KText(
                                  text: "Chauncey Phillips",
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500)
                            ],
                          ),

                          //second column of heading include logo and text home with underline
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const AppLogoWidget(),
                              SizedBox(height: 20.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KText(
                                      text: model.tabbar[model.currentIndex],
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                  Container(
                                    height: 1.h,
                                    width: model
                                            .tabbar[model.currentIndex].length *
                                        5.w,
                                    color: greenColor,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 103.h,
                            // width: 125.w,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HomeRowTextWidget(
                                    text1: "Membership:", text2: "Active"),
                                HomeRowTextWidget(
                                    text1: "Member:",
                                    text2: "Struthers Police Dept."),
                                HomeRowTextWidget(
                                    text1: "Oficer Username:",
                                    text2: "SPD Officer J. Sleft"),
                                HomeRowTextWidget(
                                    text1: "Oficer Name:",
                                    text2: "SJames Sleft"),
                                HomeRowTextWidget(
                                    text1: "Officer Badge #:", text2: "265"),
                                HomeRowTextWidget(
                                    text1: "Officer Employee I.D. #:",
                                    text2: "989898"),
                                HomeRowTextWidget(
                                    text1: "Officer N.I.M.A. Acct #:",
                                    text2: "1234"),
                                HomeRowTextWidget(
                                    text1: "State:", text2: "Ohio"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //heading row end here
                    SizedBox(height: 12.h),
                    SizedBox(
                      height: 30.h,
                      width: 1.sw,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: model.tabbar.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                model.changeIndex(index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border:
                                      Border.all(color: greenColor, width: 2),
                                ),
                                height: 55.h,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Center(
                                    child: KText(
                                      text: model.tabbar[index],
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                // width: 130.w,
                              ),
                            );
                          }),
                    ),
                    //Tabbar bar row here
                    SizedBox(height: 12.h),
                    //political updates and annoucement container

                    model.currentIndex == 0
                        ? const homeScreenmainArea()
                        : model.currentIndex == 1
                            ? const CommunityLeadersScreen()
                            : model.currentIndex == 2
                                ? const CommunityAgendaScreen()
                                : model.currentIndex == 3
                                    ? const CommunitySuggestionScreen()
                                    : model.currentIndex == 4
                                        ? const FightingOpposingAgendaScreen()
                                        : model.currentIndex == 5
                                            ? const PetitionVotesScreen()
                                            : model.currentIndex == 6
                                                ? const VotesScreen()
                                                : model.currentIndex == 7
                                                    ? const VideoConfrenceScreen()
                                                    : model.currentIndex == 8
                                                        ? const Petition1Screen()
                                                        : model.currentIndex ==
                                                                9
                                                            ? const Vote1Screen()
                                                            : const Logout(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class homeScreenmainArea extends StatelessWidget {
  const homeScreenmainArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // const KText(text: "Political Updates", fontSize: 10),
        // SizedBox(height: 12.h),
        // CommonContainer(
        //   height: 163.h,
        //   width: 321.w,
        //   radius: 13.r,
        //   text: "",
        // ),
        // SizedBox(height: 30.h),
        // //Calender and community calender container
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 13.w),
        //   decoration: BoxDecoration(
        //       color: fillColorwithOpicity,
        //       borderRadius: BorderRadius.circular(13.r)),
        //   child: Column(
        //     children: [
        //       SizedBox(height: 10.h),
        //       KText(
        //         text: "Community Calender",
        //         fontSize: 10.sp,
        //       ),
        //       SizedBox(height: 12.h),
        //       const CustomCalender(),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 12.h),

        // //List of community members and problem
        // SizedBox(height: 30.h),

        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 13.w),
        //   child: SizedBox(
        //     height: 250.h,
        //     child: GridView.builder(
        //       physics: const NeverScrollableScrollPhysics(),
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3,
        //         childAspectRatio: 3 / 1,
        //         crossAxisSpacing: 10,
        //         mainAxisSpacing: 10,
        //       ),
        //       itemCount: gridItems.length,
        //       itemBuilder: (context, index) {
        //         final item = gridItems[index];

        //         return CommonContainer(
        //           height: 35.h,
        //           width: 110.w,
        //           radius: 14.r,
        //           fontSize: 10.sp,
        //           text: item,
        //         );
        //       },
        //     ),
        //   ),
        // )
      ],
    );
  }
}

List<String> gridItems = [
  'Mayors Office',
  'Community Leaders',
  'Meetings & Events',
  'City Council Office',
  'Community Organizations',
  'Deadlines',
  'Ward Leaders',
  'Upcoming Problems',
  'Solutions',
  'Official Candidates',
  'Upcoming Legislation',
  'Settings',
  'Agenda',
];


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nimacommunityleader/core/constant/colors.dart';
// import 'package:nimacommunityleader/core/constant/style.dart';
// import 'package:nimacommunityleader/screens/home_screen/home_screen_provider.dart';
// import 'package:nimacommunityleader/screens/home_screen/widget.dart';
// import 'package:nimacommunityleader/screens/widgets/coomon_container.dart';

// import 'package:provider/provider.dart';

// import 'package:nimacommunityleader/screens/widgets/custom_calendar.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => HomeScreenProvider(),
//       child: Consumer<HomeScreenProvider>(
//         builder: (context, model, child) {
//           return SafeArea(
//             child: Scaffold(
//               backgroundColor: lighBlackColor,
//               body: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(height: 12.h),
//                     Padding(
//                       padding: EdgeInsets.only(left: 10.w),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             // mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               CommonContainer(
//                                 text: "Profile Photo",
//                                 height: 95.h,
//                                 width: 113.w,
//                                 radius: 13.r,
//                               ),
//                               SizedBox(height: 5.h),
//                               KText(
//                                   text: "Chauncey Phillips",
//                                   fontSize: 10.sp,
//                                   fontWeight: FontWeight.w500)
//                             ],
//                           ),

//                           //second column of heading include logo and text home with underline
//                           Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               const AppLogoWidget(),
//                               SizedBox(height: 20.h),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   KText(
//                                       text: "HOME",
//                                       fontSize: 10.sp,
//                                       fontWeight: FontWeight.bold),
//                                   Container(
//                                     height: 1.h,
//                                     width: 30.w,
//                                     color: greenColor,
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 103.h,
//                             width: 115.w,
//                             child: const Column(
//                               children: [
//                                 HomeRowTextWidget(
//                                     text1: "Membership:", text2: "Active"),
//                                 HomeRowTextWidget(
//                                     text1: "Member:",
//                                     text2: "Struthers Police Dept."),
//                                 HomeRowTextWidget(
//                                     text1: "Oficer Username:",
//                                     text2: "SPD Officer J. Sleft"),
//                                 HomeRowTextWidget(
//                                     text1: "Oficer Name:",
//                                     text2: "SJames Sleft"),
//                                 HomeRowTextWidget(
//                                     text1: "Officer Badge #:", text2: "265"),
//                                 HomeRowTextWidget(
//                                     text1: "Officer Employee I.D. #:",
//                                     text2: "989898"),
//                                 HomeRowTextWidget(
//                                     text1: "Officer N.I.M.A. Acct #:",
//                                     text2: "1234"),
//                                 HomeRowTextWidget(
//                                     text1: "State:", text2: "Ohio"),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),

//                     )
//                   ],
//                 ),
//               ),
//               //heading row end here
//               SizedBox(height: 12.h),
//               //Tabbar bar row here
//               SizedBox(height: 20.h),
//               //Tabbar bar row end here
//               SizedBox(height: 32.h),
//               //political updates and annoucement container
//               const KText(text: "Political Updates", fontSize: 10),
//               SizedBox(height: 12.h),
//               CommonContainer(
//                 height: 163.h,
//                 width: 321.w,
//                 radius: 13.r,
//                 text: "",
//               ),
//               SizedBox(height: 30.h),
//               //Calender and community calender container
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 13.w),
              
//                 decoration: BoxDecoration(
//                     color: fillColorwithOpicity,
//                     borderRadius: BorderRadius.circular(13.r)),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10.h),
//                     KText(
//                       text: "Community Calender",
//                       fontSize: 10.sp,
//                     ),
//                     SizedBox(height: 12.h),
//                     const CustomCalender(),
                    
//                   ],
//                 ),
//               ),
//               SizedBox(height: 12.h),

              
//               //List of community members and problem
//               SizedBox(height: 30.h),

//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 13.w),
//                 child: SizedBox(
//                   height: 250.h,
//                   child: GridView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3,
//                       childAspectRatio: 3 / 1,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 10,
//                     ),
//                     itemCount: gridItems.length,
//                     itemBuilder: (context, index) {
//                       final item = gridItems[index];


//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const KText(text: "Political Updates  ", fontSize: 10),
//         SizedBox(height: 12.h),
//         CommonContainer(
//           height: 163.h,
//           width: 321.w,
//           radius: 13.r,
//           text: "",
//         ),
//         SizedBox(height: 30.h),
//         //Calender and community calender container
//         Container(
//           height: 130.h,
//           width: 160.w,
//           decoration: BoxDecoration(
//               color: fillColorwithOpicity,
//               borderRadius: BorderRadius.circular(13.r)),
//           child: Column(
//             children: [
//               SizedBox(height: 4.h),
//               const KText(
//                 text: "Community Calender",
//                 fontSize: 5,
//               ),
//             ],
//           ),
//         ),
//         //List of community members and problem
//         SizedBox(height: 30.h),

//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 13.w),
//           child: SizedBox(
//             height: 250.h,
//             child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 3 / 1,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: gridItems.length,
//               itemBuilder: (context, index) {
//                 final item = gridItems[index];

//                 return CommonContainer(
//                   height: 35.h,
//                   width: 110.w,
//                   radius: 14.r,
//                   fontSize: 10.sp,
//                   text: item,
//                 );
//               },
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }



// List<String> gridItems = [
//   'Mayors Office',
//   'Community Leaders',
//   'Meetings & Events',
//   'City Council Office',
//   'Community Organizations',
//   'Deadlines',
//   'Ward Leaders',
//   'Upcoming Problems',
//   'Solutions',
//   'Official Candidates',
//   'Upcoming Legislation',
//   'Settings',
//   'Agenda',
// ];
