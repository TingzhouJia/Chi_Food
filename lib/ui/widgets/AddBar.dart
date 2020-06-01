import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBar extends StatefulWidget {

   Function(int) callback;

  AddBar(this.callback);

  @override
  _AddBarState createState() => _AddBarState();
}

class _AddBarState extends State<AddBar> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    bool disable=count==1;
    return Container(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width*0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              if(!disable){
                count-=1;
                setState(() {

                });
                widget.callback(count);
              }
            },
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: disable?Colors.grey:Theme.of(context).primaryColor
                )
              ),
              child: Icon(Icons.remove,color:disable?Colors.grey:Theme.of(context).primaryColor ,),
            ),
          ),
          Text(count.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),),
          GestureDetector(
            onTap: (){
              count+=1;
              setState(() {

              });
              widget.callback(count);
            },
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).primaryColor
                  )
              ),
              child: Icon(Icons.add,color:Theme.of(context).primaryColor ,),
            ),
          )
        ],
      ),
    );
  }
}
