

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final void Function() turn;

  CustomCard(this.turn);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()=>widget.turn(),
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Address Delivery',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child:Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              child: Container(

                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),

                child: Text('Select an address to deliver your dishes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0))
                ,
              ),
            ),
            SizedBox(height: 30,),
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
                  itemCount: 6,
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
                        color:selected==index?Theme.of(context).primaryColor: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                      padding: EdgeInsets.only(top: 30.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
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
                            Text('Address $index',style: TextStyle(fontWeight: FontWeight.bold),),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 120,minHeight: 170),
                              child: Text('516 Albert Street, Kingston, K7K 4M4',style: TextStyle(color: selected==index?Colors.black54:Colors.blueGrey),),
                            ),
                            Icon(Icons.restore_from_trash)
                          ],
                      ),
                    ),
                  );
              }),
            ),
            SizedBox(height: 70,),
            Container(
              width:MediaQuery.of(context).size.width*0.9 ,
              decoration: BoxDecoration(
                  color: Color(0xffeeedee),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add),
                  Text('Add new Address',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 50.0,),
            GestureDetector(
              onTap:()=> Navigator.of(context).pushNamed('/OrderFinish'),
              child: Container(
                width:MediaQuery.of(context).size.width*0.9 ,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xfff0f0f0),
                      spreadRadius: 3.0,
                      blurRadius: 2.0,
                      offset: Offset(1.0,3.0)
                    )
                  ]
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 11.0),
                child: Text('PLACE ORDER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      )
    );
  }
}
