// ignore_for_file: public_member_api_docs, sort_constructors_first
// Classe base para a criação de telas de exibição de produtos
import 'package:flutter/material.dart';

class ActionsButtonModel {
  Widget child;
  VoidCallback onPress;
  ActionsButtonModel({
    required this.child,
    required this.onPress,
  });
}
