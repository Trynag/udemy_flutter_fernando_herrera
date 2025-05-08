import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List <Message> messageList = [
    Message(text: 'Hi honey!', fromWho: FromWho.mine),
    Message(text: 'Do you come home?', fromWho: FromWho.mine),
    Message(text: 'I am waiting for you', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage (String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    notifyListeners();
  }
}