import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nima_comunity_member_app/screens/live_page.dart';
import 'package:nima_comunity_member_app/screens/video_confrence/video_confrence_provider.dart';
import 'package:provider/provider.dart';
import '../../core/constant/style.dart';
import '../widgets/coomon_container.dart';

class VideoConfrenceScreen extends StatefulWidget {
  const VideoConfrenceScreen({super.key});

  @override
  State<VideoConfrenceScreen> createState() => _VideoConfrenceScreenState();
}

class _VideoConfrenceScreenState extends State<VideoConfrenceScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoConfrenceProvider(),
      child: Consumer<VideoConfrenceProvider>(
        builder: (context, model, child) => Column(
          children: [
            SizedBox(height: 15.h),
            KText(text: "Ward Conference", fontSize: 14.sp),
            TextButton(
                onPressed: model.handleLiveAction, child: Text("Goo Live")),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("live")
                    .orderBy("createdAt", descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: SizedBox(
                        height: 160.h,
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.docs.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 1 / 1,
                            ),
                            itemBuilder: (context, index) {
                              Map<String, dynamic> meet =
                                  snapshot.data!.docs[index].data();
                              return TextButton(
                                onPressed: () {
                                  log(meet["channel"].toString());
                                  Get.to(
                                      () => LivePage(channel: meet["channel"]));
                                },
                                child: Text("${meet["name"]}"),
                              );
                            }),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 160.h,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 1,
                    ),
                    itemBuilder: (context, index) {
                      return CommonContainer(
                        text: "join",
                        height: 54.h,
                        width: 54.w,
                        radius: 13.r,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                      );
                    }),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 20.h),
            KText(text: "Precinct Conference", fontSize: 14.sp),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 160.h,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 1,
                    ),
                    itemBuilder: (context, index) {
                      return CommonContainer(
                        text: "join",
                        height: 54.h,
                        width: 54.w,
                        radius: 13.r,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                      );
                    }),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 20.h),
            KText(text: "County Conference", fontSize: 14.sp),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 160.h,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 1,
                    ),
                    itemBuilder: (context, index) {
                      return CommonContainer(
                        text: "join",
                        height: 54.h,
                        width: 54.w,
                        radius: 13.r,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
