import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2e7amBluzMInNV3ltAwBzj7pWKOHYyKtgXD8rKBVS7pW-RkPc'),
          ),
        ),
        title: const Text('mi app'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    :const MyMessageBubble();
                },
              )),
                
              
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}