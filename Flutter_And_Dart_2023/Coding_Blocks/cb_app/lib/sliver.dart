import 'package:flutter/material.dart';

import 'carousel.dart';

class SliverAppBarHB extends StatefulWidget {
  const SliverAppBarHB({super.key});

  @override
  State<SliverAppBarHB> createState() => _SliverAppBarHBState();
}

class _SliverAppBarHBState extends State<SliverAppBarHB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xff11034A6),
                  Color(0xff5f9530b),
                  Color(0xffaff9005),
                ],
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                tileMode: TileMode.decal),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset('Assets/images/cb.png', fit: BoxFit.cover),
                ),
              ),
              ListTile(
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.layers,
                      color: Colors.white,
                    )),
                title: Text(
                  'My Courses',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.library_books_rounded,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Resources',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.purple,
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.person_rounded),
            // ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            pinned: true,
            floating: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xff11034A6),
                    Color(0xff1ff0000),
                  ],
                )),
              ),
              title: Text("""Welcome To,\n RDBC Bank"""),
            ),
          ),
          StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return const SliverToBoxAdapter(
                  child: Carousel(),
                );
              }),
        ],
      ),
    );
  }
}
