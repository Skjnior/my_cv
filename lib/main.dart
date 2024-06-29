import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MON CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
            'MON CV',
          style: GoogleFonts.abyssinicaSil(
              fontWeight: FontWeight.w700,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            GeneralSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(20),
      child:  Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/moi.jpeg'),
          ),
          const SizedBox(height: 10),
          Text(
            "Mohamed Kaba",
            style: GoogleFonts.abyssinicaSil(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              fontSize: 22
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.alternate_email,
                  color: Colors.white,
                ),
                const SizedBox(width: 5),

                Text(
                  'Junior Developer',
                  style: GoogleFonts.abyssinicaSil(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                    Icons.phone_android,
                    color: Colors.white
                ),
                const SizedBox(width: 5),
                Text(
                  '+224 610 11 16 27',
                  style: GoogleFonts.abyssinicaSil(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    fontSize: 14
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(width: 5),
                Text(
                  'kabam6632@gmail.com',
                  style: GoogleFonts.abyssinicaSil(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                  Icons.location_on,
                  color: Colors.white
              ),
              const SizedBox(width: 5),
              Text(
                'C/Coyah Q/Sanoyah',
                style: GoogleFonts.abyssinicaSil(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 14
                ),
              ),

            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right: 68),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                    Icons.facebook_sharp,
                    color: Colors.white
                ),
                const SizedBox(width: 5),
                Text(
                  '@skjunior',
                  style: GoogleFonts.abyssinicaSil(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class GeneralSection extends StatelessWidget {
  const GeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
              title: 'Objectifs',
              icon: Icon(
                  Icons.filter_center_focus,
                color: Colors.blue,
                size: 30,
              ),
            subtitle: "Objectifs, Visions, Missions",

          ),
          const SectionContent(
            title: "Mon objectif",
            content: """Mon objectif est de monter en compétences à travers des formations et des projets pratiques dans le but de me perfectionner et être opérationnelle.J'ai suivis des formations dans différent domaines et je compte approfondir mes compétences""",
            date: '',
          ),

          const SizedBox(height: 20),
          const SectionTitle(
              title: 'Compétences',
              icon: Icon(
                  Icons.work,
                color: Colors.blue,
                size: 30,
              ),
            subtitle: "Compétences, expérience professionelles",

          ),
          const SectionContent(
            title: "INGENIEUR EN FIN DE CYCLE",
            content: "Développeur Junior et passionné\n"
                     "Etudiant à L'école polytechnique des Ingénieurs(UKAG)\n"
                     "Génie Informatique (Génie Logiciel)",
            date: '',
          ),

          const SizedBox(height: 20),

          const SectionTitle(
              title: 'Education',
              icon: Icon(
                  Icons.school,
                color: Colors.blue,
                size: 30,
              ),
            subtitle: "Cycle scolaire, Pays, Ville, Niveau",

          ),
          const SectionContent(
            title: "Cheick Anta Diop Guinée (Kindia)",
            content: "Brevet D'étude du Premier Cycle",
            date: '2016-2017',
          ),
           Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          const SectionContent(
            title: "Cheick Anta Diop Guinée (Kindia)",
            content: "Certiﬁcat d'étude Primaire",
            date: '2012-2013',
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          
          const SectionContent(
            title: "Stéphane plus Guinée (Kindia)",
            content: "Baccalauréat Unique",
            date: '2018-2019',
          ),


          const SizedBox(height: 20),
          const SectionTitle(
              title: 'Formations',
            icon: Icon(
                Icons.school,
              color: Colors.blue,
              size: 30,
            ),
            subtitle: "Certificats obtenus et formations suivis",
          ),

          const SectionContent(
            title: "UDEMY, TRYHACKME, YOUTUBE",
            content: 'CEH9 Sécurité Informatique',
            date: '2020-2021',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          const SectionContent(
            title: "UDEMY, ALPHORME, YOUTUBE",
            content: 'HTML5, Css3, Bootstrap',
            date: '2022-2023',

          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          const SectionContent(
            title: "UDEMY, UNIVERSITE",
            content: 'Flutter (3 Certificats, 1 Attestation (ODC), xamarin.forms .NetMaui',
            date: '2022-2023',

          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          const SectionContent(
            title: "UDEMY, UNIVERSITE",
            content: 'MySql, Oracle, MongoDB, NOSQL',
            date: '2022-2023',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:  Divider(
              height: 1,
              color: Colors.blueAccent.withOpacity(0.5),
            ),
          ),
          const SectionContent(
            title: "UNIVERSITE",
            content: 'Windows, Linux',
            date: '2020-2023',
          ),

          const SizedBox(height: 10),
          const SectionTitle(
              title: 'Intérêts',
            icon: Icon(
                Icons.gamepad,
              color: Colors.blue,
              size: 30,
            ),
            subtitle: "Passion et Diverstissements",
          ),
          const SectionContent(
            title: "LANGUES",
            content: "Lecture\n"
            "Football\n"
            "Mangas\n"
            "Jeux vidé\n"
            "Cinéma",
            date: '',
          ),
          const SizedBox(height: 10),
          const SectionTitle(
            title: 'Communication',
            icon: Icon(
              Icons.language,
              color: Colors.blue,
              size: 30,
            ),
            subtitle: "Language de communication",
          ),
          const SectionContent(
            title: "LANGUES",
            content: "Français: lu, écrit, parle\n"
                "Anglais: Technique, écrit \n"
                "Malinké, poulard, Sousou: parle",
            date: '',
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final Icon icon;
  final String subtitle;

  const SectionTitle({super.key, required this.title, required this.icon, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,),
                  child: Center(
                    child: icon,
                  ),
                ),
                //const SizedBox(width: 100,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 78.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),


              ],
            ),
            Center(
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String title;
  final String content;
  final String date;


  const SectionContent({super.key, required this.content, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SizedBox(
        width: 100,
        child: Text(
            title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      subtitle:  Text(
        content,
        style: const TextStyle(
          fontSize: 13,
          height: 1.5,
        ),
      ),
      trailing: Text(date),
    );
  }
}