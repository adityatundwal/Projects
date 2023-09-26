import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'accountcarousel.dart';
import 'models/paymentmodels.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<PaymentModels> categories = [];

  void _getCategories() {
    categories = PaymentModels.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Accounts  ',
            style:
                GoogleFonts.sansita(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            child: AccountCarousel(),
          ),
          SizedBox(
            height: 50,
          ),
          _getcategories(categories: categories),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Text(
            'Welcome, ',
            style: GoogleFonts.sansita(color: Colors.black),
          ),
          Text(
            'User!',
            style: GoogleFonts.sansita(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle_sharp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _getcategories extends StatelessWidget {
  const _getcategories({
    super.key,
    required this.categories,
  });

  final List<PaymentModels> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Menu',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 15),
        Container(
            height: 120,
            child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: (context, index) => SizedBox(
                width: 25,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: categories[index].bgcolor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(categories[index].iconPath),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      )
                    ],
                  ),
                );
              },
            )),
      ],
    );
  }
}
