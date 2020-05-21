import 'package:chifood/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  final void Function() turn;


  PaymentCard(this.turn);

  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  int selected=0;
  final imgList=['applypay.png','mastercard.jpg','visa.png'];
  final colorList=[0xffFFE53B,0xffFF2525,0xff52ACFF,0xffFFE32C,0xff6284FF,0xffFF0000];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap:()=>Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Payment Method',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Select your payment method',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),),
                Container(
                  constraints: BoxConstraints(minWidth: 80),
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Color(0xff21bf73)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.account_balance_wallet,color: Colors.white,),
                      Text('\$ 30.6',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              padding: EdgeInsets.all(5.0),
              width: double.infinity,
              height: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                  color: Color(0xffeeedee)
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    if(index==0){
                      return Container(
                        child: Icon(Icons.arrow_back_ios),
                      );
                    }
                    return GestureDetector(
                      onTap:()=> setState(() {
                        selected=index;
                      }),
                      child: Container(
                        width: 120,

                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(colorList[index]),Color(colorList[index+1])]
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),

                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                        padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    width:40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      image: DecorationImage(image: AssetImage('${asset}${imgList[index]}'),fit: BoxFit.fill)
                                    ),
                                  ),
                                  selected==index?   Container(
                                    padding:EdgeInsets.all(3.0),
                                    child: Icon(Icons.done,color: Colors.white,size: 14.0,),
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle
                                    ),
                                  ):SizedBox(height: 1,)
                                ],
                              ),
                            ),
                            Text('Balanced $index',style: TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(
                color: Color(0xffeeedee),
                borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.add),
                  Text('Add Credit Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(
                  color: Color(0xffeeedee),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Text('Mastercard'),
                  SizedBox(height: 5,),
                  Text('Add Credit Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                ],
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: ()=>widget.turn(),
              child: Container(
                width: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Text('SELECT PAYMENT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
