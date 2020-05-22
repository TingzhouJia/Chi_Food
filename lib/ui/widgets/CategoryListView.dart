import 'package:flutter/cupertino.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context,int index){
        return Container(
          padding: EdgeInsets.all(10.0),

        );
      },scrollDirection: Axis.horizontal,),
    );
  }
}
