import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double padding = 30.0;
  const AccountButton(
      {Key? key, required this.text, padding, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60, width: 0.0),
        borderRadius: BorderRadius.circular(50),
        color: Colors.white60,
      ),
      child: OutlinedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: padding),
              backgroundColor: Colors.black12.withOpacity(0.09),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          )),
    );
  }
}
