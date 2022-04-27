import 'package:app_ui_design_example/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Welcome',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              imageContainer(),
              customText(),
              bottomText(),
              getStartedText(context),
            ],
          ),
        ),
      ),
    );
  }

  Container imageContainer() => Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100.0),
            bottomLeft: Radius.circular(100.0)),
        color: Colors.orange,
        image: DecorationImage(
          image: AssetImage(
            'assets/image.jpeg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: 300.0,
    );

  Padding customText() => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Text(
        'Manage your daily task',
        style: TextStyle(
          fontSize: 50.0,
          color: Colors.indigo[900],
          fontWeight: FontWeight.bold,
        ),
      ),
    );

  Padding bottomText() => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Text(
        'Team and project management with solution providing app',
        style: TextStyle(fontSize: 20.0, color: Colors.indigo[900]),
      ),
    );

  Padding getStartedText(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home_screen');
        },
        child: Text(
          'Get started',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
      ),
    );
}
