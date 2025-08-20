import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16.0),
      child: Column(
        spacing: 16.0,
        children: [
          Text(
            'Settings',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.0,
            children: [
              Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              Text('Name'),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'John Doe',
                ),
              ),
              Text('Email'),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ],
          ),
          Column(
            spacing: 18.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Preferences',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              Option(title: 'Change Currency', subtitle: 'USD'),
              Option(title: 'Manage Categories', subtitle: '12 Categories'),
              OptionSwitch(title: 'Dark/Light Mode', subtitle: 'Light Mode'),
            ],
          ),
        ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  final String title;
  final String subtitle;

  const Option({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
            Text(subtitle, style: TextStyle(color: Color(0xff61758A))),
          ],
        ),
        IconButton(
          iconSize: 18.0,
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

class OptionSwitch extends StatelessWidget {
  final String title;
  final String subtitle;

  const OptionSwitch({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
            Text(subtitle, style: TextStyle(color: Color(0xff61758A))),
          ],
        ),
        Transform.scale(
          scale: 0.75,
          child: Switch(value: true, onChanged: (updatedValue) {}),
        ),
      ],
    );
  }
}
