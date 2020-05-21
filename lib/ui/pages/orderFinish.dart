import 'package:chifood/ui/widgets/animatedOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderFinish extends StatefulWidget {
  @override
  _OrderFinishState createState() => _OrderFinishState();
}

class _OrderFinishState extends State<OrderFinish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100.0, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Thank you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),
              child: Text(
                'Your order has been successfully added',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            SizedBox(height: 30,),
            AnimatedOrder(),
            SizedBox(
              height: 30.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              child: RichText(
                text: TextSpan(
                    text: 'Estimated Delivery in ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: '20 minutes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ]),
              ),
            ),
            Text(''),

            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                Text('6 Items will be delivered to'),
                Text('516 Ablert Street')
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffeeedee),
                        offset: Offset(1.0, 2.7),
                        blurRadius: 1.0,
                        spreadRadius: 2.0)
                  ]),
              child: Text(
                'BACK TO HOME',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffeeedee), offset: Offset(0.7, 1.2))
                  ]),
              child: Text(
                'Order List',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
