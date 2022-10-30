import 'package:flutter/material.dart';

import '../Classes/Account.dart';

class AccountPage extends StatefulWidget {
  const AccountPage(
      {Key? key}
      ) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top:65, left:90, right: 90),
            child: Image(image: AssetImage('lib/Assets/nullavatar.png'))
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Василий Иванов',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right:20),
            child: Text(
              '@loginexample',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
            ),
            child: ElevatedButton(
                onPressed: (){},
                child: Text('Редактировать профиль')
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Личные данные', style: TextStyle(fontSize: 20)),
                  Icon(Icons.arrow_right_alt_outlined)
                ]
              ),
            ),
            onTap: (){}
          ),
          GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: [
                      Text('Информация', style: TextStyle(fontSize: 20)),
                      Icon(Icons.arrow_right_alt_outlined)
                    ]
                ),
              ),
              onTap: (){}
          ),
        ],
      )
    );
  }
}
