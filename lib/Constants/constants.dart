import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryRed = Color(0xFF9E1215);
const kPrimaryBlack = Color(0xff000007);
const kPrimaryBlack6 = Color(0xff666666);
final textFieldBorder = OutlineInputBorder(
borderRadius: BorderRadius.circular(5.0),
);
final otpInputDecoration = InputDecoration(
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(color: kPrimaryRed),
  );
}
final buttonDesign = ElevatedButton.styleFrom(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8.0)),
primary: kPrimaryRed,
);
final shadow = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 5,
    ),
  ],);
final listDecor =BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 5,
    ),
  ],);
final chatDecor = BoxDecoration(
color: Colors.grey.shade400,
borderRadius: BorderRadius.circular(15)
);

const iconForward = Icon(Icons.arrow_forward,
  size: 28,);
const divider2 =  Divider(
  thickness: 2,
  color: kPrimaryBlack6,
);
const divider4 = Divider(
  thickness: 4,
  color: kPrimaryBlack6,
);
const accStyle= TextStyle(
    fontSize: 24,
    color: kPrimaryBlack6
);
