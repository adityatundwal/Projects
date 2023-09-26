import 'package:flutter/material.dart';

class PaymentModels {
  String name;
  String iconPath;
  Color bgcolor;

  PaymentModels({
    required this.name,
    required this.iconPath,
    required this.bgcolor,
  });

  static List<PaymentModels> getCategories() {
    List<PaymentModels> categories = [];

    categories.add(
      PaymentModels(
        name: 'PAY',
        iconPath: 'assets/icons/cashless-payment.png',
        bgcolor: Colors.lightBlue,
      ),
    );

    categories.add(
      PaymentModels(
        name: 'Receive',
        iconPath: 'assets/icons/receive-amount.png',
        bgcolor: Colors.lightBlue,
      ),
    );

    categories.add(
      PaymentModels(
        name: 'Send Money',
        iconPath: 'assets/icons/send-money.png',
        bgcolor: Colors.lightBlue,
      ),
    );

    categories.add(
      PaymentModels(
        name: 'Transactions',
        iconPath: 'assets/icons/transaction.png',
        bgcolor: Colors.lightBlue,
      ),
    );

    return categories;
  }
}
