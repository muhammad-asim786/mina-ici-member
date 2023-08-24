import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nima_comunity_member_app/core/constant/navigation_constant.dart';
import 'package:nima_comunity_member_app/core/constant/style.dart';
import 'package:nima_comunity_member_app/screens/wellcome_screen/welcome_screen.dart';
import 'package:nima_comunity_member_app/screens/widgets/coomon_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const KText(text: "Are you sure you want to logout?"),
        
        const SizedBox(
          height: 20,
        ),
       CommonContainer(onTap: ()async{
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove('email');
        prefs.remove('number');
        await FirebaseAuth.instance.signOut();
        navigateAndRomvoe(const WelcomeScreen());
       },  text: "Logout",),
      ],
    );
  }
}