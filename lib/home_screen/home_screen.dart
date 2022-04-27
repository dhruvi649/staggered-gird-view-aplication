import 'package:app_ui_design_example/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Home',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topText(),
              greyText(),
              customContainer(context),
              monthlyReviewText(),
              staggeredGridView(),
            ],
          ),
        ),
      ),
    );
  }

  Text topText() => Text(
      'Hi Dhruvi',
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.indigo[900],
      ),
    );

  Text greyText() => Text(
      '6 tasks are pending',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.grey[700],
      ),
    );

  Padding customContainer(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        height: 160.0,
        width: 500.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.8), blurRadius: 8.0)
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Stack(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image.jpeg'),
                          radius: 30.0,
                        ),
                        Positioned(
                          left: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/image2.jpg'),
                            radius: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'next_screen');
                  },
                  child: const Text(
                    'Now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  Padding monthlyReviewText() => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Text(
        'Monthly review',
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.indigo[900],
            fontWeight: FontWeight.bold),
      ),
    );

}

Padding staggeredGridView() => Padding(
    padding: const EdgeInsets.only(top: 25.0),
    child: StaggeredGrid.count(
      crossAxisCount: 4,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: backgroundMethod('22 Done'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: backgroundMethod('7 in progress'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: backgroundMethod('10 ongoing'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: backgroundMethod('12 waiting for review'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 2,
          child: backgroundMethod('22 Done'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: backgroundMethod('22 Done'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: backgroundMethod('7 in progress'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: backgroundMethod('10 ongoing'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: backgroundMethod('12 waiting for review'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 2,
          child: backgroundMethod('22 Done'),
        ),
      ],
    ),
  );
Widget backgroundMethod(String text) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.indigo[900],
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.8), blurRadius: 2.0)
      ],
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ));
