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
      title: 'Plapros-beta',
      initialRoute: '/ruiqunli',
      routes: {
        '/ruiqunli': (context) => UserPage(
              givenName: 'Ruiqun',
              familyName: 'Li',
              title: 'Director, Project Management',
              linkedin: 'https://www.linkedin.com/in/ruiqun-li-21984b91/',
              avatar: 'assets/images/ruiqun_li.jpeg',
              companyLogo: 'assets/images/plapros_logo.png',
              companyUrl: 'https://www.plapros.ca/',
              about:
                  'Plapros is a pioneering company at the forefront of resource sustainability technology research, development, and consulting. As an environmental technology specialist, we excel in crafting cost-effective and user-friendly technology solutions that place recyclable, reusable, and renewable materials at the forefront.',
              phone: '+1 514-699-6181',
              email: 'ruiqun.li@plapros.com',
              address: '237 Bd Industriel #140, Châteauguay, QC, J6J 4Z2, Canada',
              company: 'Plapros Inc.',
            ),
        '/brendali': (context) => UserPage(
              givenName: 'Brenda',
              familyName: 'Li',
              title: 'Vice-President, Operations',
              linkedin: 'https://www.linkedin.com/in/brenda-li-42729b298/',
              avatar: 'assets/images/brenda_li.jpeg',
              companyLogo: 'assets/images/plapros_logo.png',
              companyUrl: 'https://www.plapros.ca/',
              about:
                  'Plapros is a pioneering company at the forefront of resource sustainability technology research, development, and consulting. As an environmental technology specialist, we excel in crafting cost-effective and user-friendly technology solutions that place recyclable, reusable, and renewable materials at the forefront.',
              phone: '+1 514-268-6858',
              email: 'brenda.li@plapros.com',
              address: '237 Bd Industriel #140, Châteauguay, QC, J6J 4Z2, Canada',
              company: 'Plapros Inc.',
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
              phone: '+1 438-239-8808',
              email: 'info@mont-river.ca',
              address: '2300 32e Ave., Lachine, QC, H8T 3H4, Canada',
              company: 'MontRiver',
            ),
        '/jeffliangzhao': (context) => UserPage(
              givenName: 'Jeff Liang',
              familyName: 'Zhao',
              title: 'Estate Broker',
              linkedin: 'https://www.linkedin.com/in/jeff-liang-zhao-68761637/',
              avatar: 'assets/images/liang_zhao.jpeg',
              companyLogo: 'assets/images/charisma_logo.png',
              companyUrl: 'https://www.realtor.ca/agent/1567096/liang-zhao-340-3310-100e-avenue-laval-quebec-h7t0j7',
              about:
                  'Experienced Real Estate Broker with a demonstrated history of working in the consumer services industry. Skilled in Lease Administration, Commercial Real Estate, Real Property, Working with Tenants, and Real Estate. Strong real estate professional from 2004, graduated from Shanxi University. ',
              phone: '+1 514-898-6780',
              email: 'info@charisma.ca',
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
