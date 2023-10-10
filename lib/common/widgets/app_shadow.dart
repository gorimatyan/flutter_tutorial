import 'package:flutter/material.dart';

BoxDecoration appBoxShadow() {
  return BoxDecoration(
      // colorをtransparentにすると面白い
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: const Color.fromARGB(255, 33, 54, 243).withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1))
      ]);
}
