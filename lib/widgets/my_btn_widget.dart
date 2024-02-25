import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final btnText;

  final Function()?ontap;

  const MyButton({
    super.key,
    required this.btnText,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              fontFamily: "Ubuntu Reg",
              color: Colors.white,
              fontSize: 15
            ),
          ),
        ),
      ),
    );
  }
}
