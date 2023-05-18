import '../i_payment.dart';

class CreditCardStrategy implements PaymentStrategy {
  String cardNumber;
  String cvv;

  CreditCardStrategy(this.cardNumber, this.cvv);

  @override
  void pay(double amount) {
    // Lógica para processar o pagamento com cartão de crédito
    print('Pagamento de R\$$amount realizado com cartão de crédito ($cardNumber)');
  }
}
