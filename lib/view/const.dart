// import 'dart:js';

import 'package:flutter/material.dart';

class ConstantView {
  showSnackBar(context, Text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$Text"),
        )
        );
  }
}
