import 'package:app_ui_design_example/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  static const String id = 'next_screen';

  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Another Screen'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              dateContainer(),
              onGoingText(),
              ongoing(context),
              ongoing(context),
              ongoing(context),
              ongoing(context),
            ],
          ),
        ),
      ),
    );
  }

  Row dateContainer() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        container('12 Wed'),
        containerMethod('13 Thu'),
        containerMethod('14 Fri'),
        containerMethod('15 Sat'),
      ],
    );

  Padding onGoingText() => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Ongoing',
          style: TextStyle(
            color: Colors.indigo[900],
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

  Padding ongoing(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '9 AM',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 80.0),
              Text(
                '10 AM',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 160.0,
            width: 270.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8.0,
                ),
              ],
              color: Colors.indigo[900],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Mobile app design',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Some tasks are pandding',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Stack(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/image.jpeg'),
                              radius: 30.0,
                            ),
                            Positioned(
                              left: 50,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/image2.jpg'),
                                radius: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '9 AM - 10 AM',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  Container container(String text) => Container(
      width: 70.0,
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.indigo[900],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

  Container containerMethod(String text) => Container(
      width: 70.0,
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.grey,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
}
