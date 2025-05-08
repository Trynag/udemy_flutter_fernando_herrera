import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List <Message> messages = [
    Message(text: 'Hola amor!', fromWho: FromWho.mine),
    Message(text: 'Do you come home?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage (String text) async {
    // TODO: implementar metodo
  }
}