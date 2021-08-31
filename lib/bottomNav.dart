import 'package:flutter/material.dart';

class botomNav extends StatelessWidget {
  // const botomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 350,
              height: 40,
              color: Colors.teal[900],
            
              
            ),
          ),
          
        ],
      ),
    );
  }
}