import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void setupPushNotifications() async {
    final fcm = FirebaseMessaging.instance;
    await fcm.requestPermission();

    fcm.subscribeToTopic('chat');     //for sending notification to multiple devices simultaneously whenever any notifiaction we set to chat topic

    //final token = await fcm.getToken();    //for target single device
    //print(token);  //you could send this token (via http or the Firestore SDK) to a backend
  }//device used : dXOUDD9NQ8K4oXCeQ5TVPz:APA91bFewKV4hI61uaVNMIsU1cVJfAqJ-gpFSeopeORtW0n77yHm8EgKMmHS4tptlsLoXmc1LLMBWF-UXVYqkpWdc3sgSghHYHUhFHYFV84eL7nFniXFrTrqbetLZShSwuzIdFZRfP6K

  @override
  void initState() {
    super.initState();
    setupPushNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.exit_to_app),
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child:
                ChatMessages(), //we wrap the chat message with expanded cuz we are ensuring chatmessage screen should take as many space as it need from top to bottom and we add newmessage then
          ),
          NewMessage(),
        ],
      ),
    );
  }
}
