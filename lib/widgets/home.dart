import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nfccard/widgets/business_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html';
import 'package:flutter/services.dart' show rootBundle;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 4 / 7; // Typical business card aspect ratio
    double cardHeight = screenWidth / aspectRatio;
    double mult = 1.2;
    return Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text("Hello!",
                  style: TextStyle(fontFamily: 'Jersey15', fontSize: 30),
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
                    child: SizedBox(width: 350 * mult, child: BusinessCard())),
                Container(
                  width: 350 * mult,
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set background color
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set border radius
                          ),
                        ),
                      ),
                      onPressed: () => createAndDownloadVCF(),
                      child: const Text(
                        'Add Card to Contacts',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
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
                          String url =
                              'https://www.linkedin.com/in/ruiqun-li-21984b91/';
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
                          String url = 'https://www.plapros.ca/';
                          launch(url);
                        },
                        child: Image.asset(
                          'assets/images/logo.png',
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
                        'About Us',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        textAlign: TextAlign.center,
                        'Plapros is a pioneering company at the forefront of resource sustainability technology research, development, and consulting. As an environmental technology specialist, we excel in crafting cost-effective and user-friendly technology solutions that place recyclable, reusable, and renewable materials at the forefront. '))
              ],
            )));
  }

  void createAndDownloadVCF() async {
    // Define contact information
    String firstName = 'Ruiqun';
    String lastName = 'Li';
    String email = 'ruiqun.li@plapros.com';
    String phoneNumber = '+1 514-699-6181';

    // Construct VCF file content
    String vcfContent = '''
BEGIN:VCARD
VERSION:3.0
FN:$firstName $lastName
N:$lastName;$firstName
EMAIL;TYPE=INTERNET:$email
TEL;TYPE=CELL:$phoneNumber
END:VCARD
''';

    // Encode the VCF content to base64
    String vcfBase64 = base64Encode(utf8.encode(vcfContent));

    // Construct data URI
    String dataUri = 'data:text/vcard;base64,$vcfBase64';

    // Open the data URI in a new tab
    window.open(dataUri, '_blank');
  }

// void saveToContacts(BuildContext context) async {
//   // Replace these with actual contact details
//   String name = 'John Doe';
//   String email = 'johndoe@example.com';
//   String phone = '+1 555-123-4567';
//
//   String url = 'content://contacts/people/new?name=$name&phone=$phone&email=$email';
//
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Could not launch contact app.'),
//       ),
//     );
//   }
// }
}
