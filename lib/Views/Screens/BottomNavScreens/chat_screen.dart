import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../chat_page.dart';
import '../drawer.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: kPrimaryRed,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            "Chat List",
            style: TextStyle(
              fontSize: 22.dp,
            ),
          ),
        ),
        drawer: const DrawerPage(),
        body: const ChatDetails());
  }
}

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: ChatModel.items.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ChatWidget(
                person: ChatModel.items[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ChatWidget extends StatefulWidget {
  final Person person;

  const ChatWidget({Key? key, required this.person}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.dp),
      child: Container(
        decoration: listDecor,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                widget.person.image,
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChatScreen()));
              },
              title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.person.name,
                    style: TextStyle(fontSize: 22.dp, color: kPrimaryBlack),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
