import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:touche/widgets/business_card.dart';
import 'package:touche/widgets/gradient_button.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html';

class UserPage extends StatelessWidget {
  final String givenName;
  final String familyName;
  final String title;
  final String linkedin;
  final String avatar;
  final String company;
  final String companyLogo;
  final String companyUrl;
  final String about;
  final String phone;
  final String email;
  final String address;

  const UserPage(
      {super.key,
      required this.givenName,
      required this.title,
      required this.linkedin,
      required this.avatar,
      required this.companyLogo,
      required this.companyUrl,
      required this.about,
      required this.phone,
      required this.email,
      required this.address,
      required this.familyName,
      required this.company});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 4 / 7; // Typical business card aspect ratio
    double cardHeight = screenWidth / aspectRatio;
    double mult = 1.2;
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("touche.",
                  style: TextStyle(fontFamily: 'PoetsenOne', fontSize: 30),
                  textAlign: TextAlign.center)),
        ),
        body: Container(
            width: 350 * mult,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                    width: 350 * mult,
                    height: 200 * mult,
                    child: SizedBox(
                        width: 350 * mult,
                        child: BusinessCard(
                          givenName: givenName,
                          familyName: familyName,
                          title: title,
                          email: email,
                          phone: phone,
                          logo: companyLogo,
                          avatar: avatar,
                        ))),
                Container(
                  width: 350 * mult,
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 50,
                    child: GradientButton(
                      child: Text(
                        'Save contact',
                        style: TextStyle(
                            fontFamily: 'PoetsenOne',
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      onPressed: () async {
                        // Contact c = await createContact();
                        // await addContact(c);
                        await createAndDownloadVCF();
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 200.0),
                  child: Divider(
                    thickness: 5,
                    color: Colors.black87,
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          String url = linkedin;
                          launch(url);
                        },
                        child: Image.asset(
                          'assets/images/linkedin_logo.png',
                          // Replace with your logo asset path
                          width: 64, // Adjust width as needed
                          height: 64, // Adjust height as needed
                        ),
                      ),
                      Container(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {
                          String url = companyUrl;
                          launch(url);
                        },
                        child: Image.asset(
                          companyLogo,
                          // Replace with your logo asset path
                          width: 128, // Adjust width as needed
                          height: 64, // Adjust height as needed
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(textAlign: TextAlign.center, about)),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('integrated with ', style: TextStyle(fontSize: 12),),
                          Image.asset('assets/images/plapros_logo.png')
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('powered by ', style: TextStyle(fontSize: 12)),
                          Text("touche.",
                              style: TextStyle(
                                  fontFamily: 'PoetsenOne', fontSize: 20),
                              textAlign: TextAlign.center)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )));
  }

  Future<String> getImageBase64(String avatar) async {
    final ByteData imageData = await rootBundle.load(avatar);
    final Uint8List bytes = imageData.buffer.asUint8List();
    return base64Encode(bytes);
  }

  Future<void> createAndDownloadVCF() async {
    List<String> adr = address.split(',');
    String vcfContent = '''
BEGIN:VCARD
VERSION:3.0
FN:$givenName $familyName
N:$familyName;$givenName
ORG:$company
TITLE:$title
EMAIL;TYPE=INTERNET:$email
TEL;TYPE=CELL:$phone
URL:$companyUrl
ADR;TYPE=WORK:;;${adr[0].trim()};${adr[1].trim()};${adr[2].trim()};${adr[3].trim()};${adr[4].trim()}
END:VCARD
''';

    // Encode the VCF content to base64
    String vcfBase64 = base64Encode(utf8.encode(vcfContent));

    // Construct data URI
    String dataUri = 'data:text/vcard;base64,$vcfBase64';

    // Open the data URI in a new tab
    window.open(dataUri, '_blank');
  }
}
