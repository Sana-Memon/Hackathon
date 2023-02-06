import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/consts/colors.dart';

Widget customTextField(text, controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text, style: TextStyle(fontSize: 20, color: greenColor)),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
            isDense: true,
            labelText: text,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: greenColor))),
      ),
    ],
  );
}
