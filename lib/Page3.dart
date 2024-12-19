import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
SliverAppBar(
  pinned: true,
  expandedHeight: 200,
  backgroundColor: Colors.amber[300],
  flexibleSpace: FlexibleSpaceBar(
    title: Text('Rakibl'),
  ),
),
SliverList(delegate: SliverChildListDelegate([
  addDetails('Rakib', 'I am a programmer'),
  addDetails('sakib', 'I am a SEO'),
  addDetails('Raihan', 'I am a UI/UX'),
  addDetails('sumon', 'I am a UI/UX'),
  addDetails('Rakib', 'I am a '),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer'),
  addDetails('Rakib', 'I am a programmer')

]))
      ],),
    );
  }
}


Widget addDetails(
  String name,
  String subtitle,
){
  return ListTile(
    title: Text(name),
    subtitle: Text(subtitle),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),

  );
}