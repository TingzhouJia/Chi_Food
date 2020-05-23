import 'package:chifood/config.dart';
import 'package:flutter/cupertino.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(itemBuilder: (BuildContext context,int index){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all()
          ),
          height: 80,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image(image: AssetImage('$icon${categoryList[index]}'),fit: BoxFit.fill,),
              ),
              Text('category')
            ],
          ),
        );
      },scrollDirection: Axis.horizontal, itemCount: 7,),
    );
  }
}
