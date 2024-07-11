import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Personal Information'),
              Tab(icon: Icon(Icons.school), text: 'Education'),
              Tab(icon: Icon(Icons.code), text: 'Skills'),
              Tab(icon: Icon(Icons.work), text: 'Interests'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInfoScreen(),
            EducationScreen(),
            SkillsScreen(),
            InterestsScreen(),
            ContactScreen(),
          ],
        ),
      ),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('assets/feksur.jpg'),
          ),
          SizedBox(height: 16),
          Text('Nathaniel L. Rilano',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Age: 30'),
          SizedBox(height: 8),
          Text(
              'I am Nathaniel Rilano from Balete Relocation Site Batangas City with an age of 21 and a BSIT student from Batangas State University. I want to be data analyst with a passion for transforming complex datasets into actionable insights. I have a strong background in statistical analysis and data visualization, proficient in tools like the SQL. ',
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.school),
          title: Text('College'),
          subtitle: Text('Batangas State University 2025'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Senior High School'),
          subtitle: Text('Golden Gate Colleges 2019-2021'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Junior High School'),
          subtitle: Text('Golden Gate Colleges 2019'),
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Elementary'),
          subtitle: Text('Balete Relocation Site Elememtary School 2015'),
        ),
      ],
    );
  }
}

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.code),
          title: Text('Technical Skills'),
          subtitle: Text(
              'A little bit of Flutter and Dart with the use of Google, Database Management, Data Analyst'),
        ),
        ListTile(
          leading: Icon(Icons.build),
          title: Text('Certifications'),
          subtitle: Text('Work Immersion'),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Non-Technical Skills'),
          subtitle: Text('Project Management, Communication, Time Management '),
        ),
      ],
    );
  }
}

class InterestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Professional Interests'),
          subtitle: Text('Mobile App Development, Data Analyzing'),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Notable Projects'),
          subtitle: Text('Capstone Project'),
        ),
        ListTile(
          leading: Icon(Icons.public),
          title: Text('Publications'),
          subtitle: Text('Research Paper'),
        ),
      ],
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email'),
          subtitle: Text('ntrilano@gmail.com'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('+639611977933'),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text('Website'),
          subtitle: Text('www.nathaniel.com'),
        ),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('LinkedIn'),
          subtitle: Text('linkedin.com/in/nathaniel'),
        ),
      ],
    );
  }
}
