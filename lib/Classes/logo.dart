import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 140),
      child: Container(
        //color: Colors.black,
        child: Center(
          child: const Text(
              'dvorets',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Arial',
                backgroundColor: Colors.black ,
                color: Colors.deepPurple,
              )
          ),
        ),
      ),
    );
  }
}

