
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

const appId = "af47f7003f10493198628d4aee85586c";
const token = null;

class LivePage extends StatefulWidget {
  final String channel;
  const LivePage({super.key,required this.channel});
  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  static String channel = "";
  AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: appId,
      channelName: channel,
    ),
  );

// Initialize the Agora Engine
  @override
  void initState() {
    super.initState();
    channel = widget.channel;
    setState(() {});
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

// Build your layout
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(client: client),
              AgoraVideoButtons(client: client),
            ],
          ),
        ),
      ),
    );
  }
}