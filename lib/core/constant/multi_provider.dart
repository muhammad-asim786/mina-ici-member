

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../screens/community_leader_profile_screen.dart/community_leader_profile_provider.dart';
import '../../screens/login_screen/login_provider.dart';
import '../../screens/petition_1_screen/petition_1_provider.dart';
import '../../screens/petition_votes/petition_votes_provider.dart';
import '../../screens/task_and_order.dart/task_and_order_provider.dart';
import '../../screens/vote_1_screen/vote_1_provider.dart';
import '../../screens/votes_screen/votes_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CommunityLeaderProfileProvider()),
  ChangeNotifierProvider(create: (_) => LoginProvider()),
  ChangeNotifierProvider(create: (_) => TaskAndOrderProvider()),
  ChangeNotifierProvider(create: (_) => PetitionProvider()),
  ChangeNotifierProvider(create: (_) => Votesprovider()),
  ChangeNotifierProvider(create: (_) => Petition1Provider()),
  ChangeNotifierProvider(create: (_) => Vote1Provider()),

];
