import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
const ChatScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _ChatTitle(),
      body: _ChatView(),
    );
  }
}

class _ChatTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Mi amor '),
      leading: const Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2021/03/01112314/anna-taylor-joy-golden-globes-2021-side-parting-hairstyle-inspiration-256x256.png'
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder:(context, index) {
                  return MyMessageBubble();
                },
              ),
            ),
            Text('World'),
          ],
        ),
      ),
    );
  }
}