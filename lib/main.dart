import 'package:flutter/material.dart';
import 'package:touche/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Véloise-beta',
      initialRoute: '/ruiqun_li',
      routes: {
        '/ruiqun_li': (context) => UserPage(
              givenName: 'Ruiqun',
              familyName: 'Li',
              title: 'CEO',
              linkedin: 'https://www.linkedin.com/in/ruiqun-li-21984b91/',
              avatar: 'assets/images/ruiqun_li2.png',
              companyLogo: 'assets/images/veloise_logo.png',
              companyUrl: 'https://www.veloise-group.com/',
              about:
                  'VÉLOISE is above all an innovative fabric. This polylactic acid-based material gives it exceptional characteristics. It has exceptional finesse and comfort offering a unique experience for the skin. This fabric is hypoallergenic, perfect for sensitive skin, it is also breathable, antibacterial and anti-mite, but above all durable. The VÉLOISE brings you comfort without constraints. Fashion, even sustainable, should remain a pleasure!Today, we want to offer major fashion players the opportunity to use our materials for a healthier future while respecting the environment.',
              phone: '+1 514-699-6181',
              email: 'ruiqun.li@veloise-group.com',
              address: '237 Bd Industriel, Châteauguay, QC, J6J 4Z2, Canada',
              company: 'Véloise Inc.',
            ),
        '/julien_tougeron': (context) => UserPage(
              givenName: 'Julien',
              familyName: 'Tougeron',
              title: 'President',
              linkedin: 'https://www.linkedin.com/in/julien-tougeron/',
              avatar: 'assets/images/julien_tougeron.png',
              companyLogo: 'assets/images/veloise_logo.png',
              companyUrl: 'https://www.veloise-group.com/',
              about:
                  'VÉLOISE is above all an innovative fabric. This polylactic acid-based material gives it exceptional characteristics. It has exceptional finesse and comfort offering a unique experience for the skin. This fabric is hypoallergenic, perfect for sensitive skin, it is also breathable, antibacterial and anti-mite, but above all durable. The VÉLOISE brings you comfort without constraints. Fashion, even sustainable, should remain a pleasure!Today, we want to offer major fashion players the opportunity to use our materials for a healthier future while respecting the environment.',
              phone: '+1 514-298-2337',
              email: 'julien.tougeron@veloise-group.com',
              address: '237 Bd Industriel, Châteauguay, QC, J6J 4Z2, Canada',
              company: 'Véloise Inc.',
            ),
        '/davidtrunzo': (context) => UserPage(
              givenName: 'David',
              familyName: 'Trunzo',
              title: 'Dubois & Associés',
              linkedin: 'https://www.linkedin.com/in/david-trunzo-9125992b/',
              avatar: 'assets/images/david_trunzo.jpeg',
              companyLogo: 'assets/images/montriver_logo.png',
              companyUrl: 'https://mont-river.ca/',
              about:
                  'MontRiver international Inc. is a company specializing in a series of renovation materials such as kitchen cabinet, bathroom cabinet, wood flooring, vinyl flooring, plywood, outdoor wood-plastic flooring, wood-plastic fences and other renovation materials. Our company owns three brands: MontRiver, MooseWood, Magog for three different product series. MONTRIVER is based in Montreal, serving the North Americain market, quality oriented, loyal to customers.',
              phone: '+1 514-654-5694',
              email: 'operations@montrivermtl.ca',
              address: '2300 32e Ave., Lachine, QC, H8T 3H4, Canada',
              company: 'MontRiver',
            ),
        '/jeffliangzhao': (context) => UserPage(
              givenName: 'Jeff Liang',
              familyName: 'Zhao',
              title: 'Real estate agent for 19 years ',
              linkedin: 'https://www.linkedin.com/in/jeff-liang-zhao-68761637/',
              avatar: 'assets/images/liang_zhao.jpeg',
              companyLogo: 'assets/images/charisma_logo.png',
              companyUrl:
                  'https://www.realtor.ca/agent/1567096/liang-zhao-340-3310-100e-avenue-laval-quebec-h7t0j7',
              about:
                  'Experienced Real Estate Broker with a demonstrated history of working in the consumer services industry. Skilled in Lease Administration, Commercial Real Estate, Real Property, Working with Tenants, and Real Estate. Strong real estate professional from 2004, graduated from Shanxi University. ',
              phone: '+1 514-898-6780',
              email: 'jeff@charisma.ca',
              address: '3310 100e Avenue, Laval, QC, H7T 0J7, Canada',
              company: 'LES IMMEUBLES CHARISMA INC.',
            ),
      },
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      //   useMaterial3: true,
      // ),
    );
  }
}
