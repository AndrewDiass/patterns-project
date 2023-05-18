import '../i_payment.dart';

class PixStrategy implements PaymentStrategy {
  String pixCode;

  PixStrategy(this.pixCode);

  @override
  void pay(double amount) {
    // Lógica para processar o pagamento por transferência bancária
    print('Pagamento de R\$$amount realizado por transferência bancária (conta: $pixCode)');
  }
}
