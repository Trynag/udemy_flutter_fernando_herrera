import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  
  List <Message> messageList = [
    Message(text: 'Hi honey!', fromWho: FromWho.mine),
    Message(text: 'Do you come home?', fromWho: FromWho.mine),
    Message(text: 'I am waiting for you', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage (String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    if (text.startsWith('?')) await herReplay();

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReplay () async { 
    getYesNoAnswer.getAnswer();
  }

  Future<void> moveScrollToBottom () async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut
    );
  }
}