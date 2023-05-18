import 'package:flutter/material.dart';

import 'i_payment.dart';
import 'payment_methods/credit_card.dart';
import 'payment_methods/paypal.dart';
import 'payment_methods/pix.dart';

class PaymentContext {
  late PaymentStrategy _paymentStrategy;

  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
  }

  void processPayment(double amount) {
    _paymentStrategy.pay(amount);
  }
}

class StrategyPage extends StatefulWidget {
  const StrategyPage({super.key});

  @override
  State<StrategyPage> createState() => _StrategyPageState();
}

class _StrategyPageState extends State<StrategyPage> {
  PaymentContext paymentContext = PaymentContext();

  void payment(PaymentStrategy paymentStrategy) {
    paymentContext.setPaymentStrategy(paymentStrategy);
    paymentContext.processPayment(100.00);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Strategy'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: const Text("Cartão de credito"),
              onPressed: () => payment(CreditCardStrategy('1234 5678 9012 3456', '123')),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text("PayPal"),
              onPressed: () => payment(PayPalStrategy('meuemail@example.com', 'senha123')),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text("Pix"),
              onPressed: () => payment(PixStrategy('01234567-8')),
            ),
          ],
        ));
  }
}
