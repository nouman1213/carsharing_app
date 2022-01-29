import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_chat_details.dart';
import '../driver_drawer.dart';

class DriverChat extends StatefulWidget {
  @override
  _DriverChatState createState() => _DriverChatState();
}

class _DriverChatState extends State<DriverChat> {
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
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Chat List",
            style: TextStyle(
              fontSize: 22.dp,
            ),
          ),
        ),
        drawer: DriverDrawerPage(),
        body: ChatDetails());
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
      padding: const EdgeInsets.all(8.0),
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
                    builder: (context) => DriverChatDetails()));
              },
              title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.person.name,
                    style: TextStyle(fontSize: 20.dp, color: kPrimaryBlack),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
