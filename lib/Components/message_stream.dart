import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chatsapp/screens/login_screen.dart';
import 'package:chatsapp/screens/chat_screen.dart';

final _firestore = FirebaseFirestore.instance;

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      builder:
          // ignore: missing_return
          (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.docs.reversed;
        List<MessageBubble> messageBubbles = [];
        List<MessageBubble> messageBubblesUser = [];
        for (var message in messages) {
          final messageText = message.data()['text'];
          final messageSender = message.data()['sender'];
          final currentUser = loggedInUser.email;
          final userId = loggedInUser.uid;
          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: currentUser == messageSender,
            userid: userId,
          );
          messageBubbles.add(messageBubble);
        }
        messageBubblesUser = messageBubbles
            .where((element) => element.sender == selectedUser)
            .toList();

        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: messageBubblesUser,
          ),
        );
      },
      stream:
          _firestore.collection('messages').orderBy('timestamp').snapshots(),
    );
  }
}
