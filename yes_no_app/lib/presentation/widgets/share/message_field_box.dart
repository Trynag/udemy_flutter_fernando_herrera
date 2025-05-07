import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({ super.key });

  @override
  Widget build(BuildContext context){

    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration( 
      hintText: 'End your message with a "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: (){
          if (kDebugMode) {
            print('Valor de la caja de texto');
          }
        }, 
        icon: Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        if(kDebugMode) {
          print(value);
        }
      },
      onChanged: (value) {
        if (kDebugMode) {
          print(value);
        }
      },
    );
  }
}
