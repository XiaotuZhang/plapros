import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:touche/widgets/icon_with_text.dart';
import 'package:touche/widgets/name_and_title.dart';

class BusinessCard extends StatelessWidget {
  final String givenName;
  final String familyName;
  final String title;
  final String phone;
  final String email;
  final String avatar;
  final String logo;

  const BusinessCard(
      {super.key,
      required this.title,
      required this.email,
      required this.avatar,
      required this.phone,
      required this.logo,
      required this.givenName,
      required this.familyName});

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
              image: new AssetImage("assets/images/bg_grey.png"),
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
                      child: Image.asset(logo),
                    )),
                Expanded(
                    flex: 2,
                    child: NameAndTitle(
                      nameColor: Colors.black87,
                      titleColor: Colors.black87,
                      nameLabel: givenName + ' ' + familyName,
                      titleLabel: title,
                    )),
                Expanded(
                    flex: 1,
                    child: IconWithText(
                      icon: CupertinoIcons.mail_solid,
                      label: email,
                      color: Color(0xff3c7112),
                    )),
                Expanded(
                    flex: 1,
                    child: IconWithText(
                      icon: CupertinoIcons.phone_solid,
                      label: phone,
                      color: Color(0xff3c7112),
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(avatar),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
