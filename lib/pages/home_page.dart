import 'package:dicoding_flutter/widgets/home_nav_bar.dart';
import 'package:dicoding_flutter/widgets/item_widget.dart';
import 'package:dicoding_flutter/widgets/item_widget2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      // onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    InkWell(
                      // onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Mie Ayam & Bakso",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Pesan antar",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TabBar(
                labelStyle: TextStyle(fontSize: 20),
                indicator: BoxDecoration(),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Mie Ayam"),
                  Tab(text: "Bakso"),
                ],
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [ItemsWidget(), ItemsWidget2()],
                  ))
            ],
          ),
        )),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
