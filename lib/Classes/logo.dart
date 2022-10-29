import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 140),
        child: Center(
            child: Text(
                'dvorets',
                style: TextStyle(
                  fontSize: 70,
                  fontFamily: 'Arial',
                  backgroundColor: Colors.black ,
                  color: Colors.deepPurple,
                )
            ),
          ),
      );
    }
}

