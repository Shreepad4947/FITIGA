import 'package:flutter/material.dart';

class botomNav extends StatelessWidget {
  // const botomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 350,
              height: 40,
              color: Colors.teal[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Container(
                    
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),color: Colors.white,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(9),
                      child: Text("DONATE",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/face.png'),
                  ), 
                  Container(
                    margin:EdgeInsets.only(left: 20),
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/face.png'),
                  ),
                ],
              ),
            
              
            ),
          ),
          
        ],
      ),
    );
  }
}