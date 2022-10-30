import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

Widget _paymentWindow(String _address, String _name, String _cost, bool _isCancelled){
  return Center(
    child: Container(
      height: 200,
      width: 340,
      padding: EdgeInsets.only(top:20, left:20, right:50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.deepPurpleAccent
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:5, top: 5),
                child: Text('$_name', style: TextStyle(fontSize:30)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.place_outlined),
              Text('$_address')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.money_rounded),
              Text('Квитанция за Сентбярь'),
              SizedBox(width: 15),
              Container(
                width: 10,
                height: 10,
                color: (_isCancelled == true
                ? Colors.green
                : Colors.red)
              )
            ]
          ),
          Row(
            children:[
              SizedBox(width: 30),
              Text('$_cost')
            ]
          ),
          ElevatedButton(
            onPressed: (){},
            child: Text('Оплатить')
          )
        ],
      )
    ),
  );
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(height: 70),
          _paymentWindow('exampleAddress', 'exampleName', 'exampleCost', false),
        ]
      ),
    );
  }
}
