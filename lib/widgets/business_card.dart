import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nfccard/widgets/icon_with_text.dart';
import 'package:nfccard/widgets/name_and_title.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: new AssetImage("assets/images/bg_green.png"),
              fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/logo.png"),
                    )),
                const Expanded(
                    flex: 2,
                    child: NameAndTitle(
                      nameLabel: "Ruiqun Li",
                      titleLabel: "Director, Project Management",
                    )),
                const Expanded(
                    flex: 1,
                    child: IconWithText(
                      icon: CupertinoIcons.mail_solid,
                      label: 'ruiqun.li@plapros.com',
                      color: Color(0xff3c7112),
                    )),
                const Expanded(
                    flex: 1,
                    child: IconWithText(
                      icon: CupertinoIcons.phone_solid,
                      label: '+1 514-699-6181',
                      color: Color(0xff3c7112),
                    )),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
