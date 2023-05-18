import '../i_payment.dart';

class PayPalStrategy implements PaymentStrategy {
  String email;
  String password;

  PayPalStrategy(this.email, this.password);

  @override
  void pay(double amount) {
    // Lógica para processar o pagamento com PayPal
    print('Pagamento de R\$$amount realizado com PayPal (e-mail: $email)');
  }
}
