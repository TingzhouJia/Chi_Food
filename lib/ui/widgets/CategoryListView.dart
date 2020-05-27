import 'package:chifood/config.dart';
import 'package:chifood/model/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  List<Category> _categoryList;

  CategoryList(this._categoryList);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 150,
      padding: EdgeInsets.only(bottom: 20.0),
      child: ListView.builder(itemBuilder: (BuildContext context,int index){
        Category each= widget._categoryList[index];
        return GestureDetector(
          onTap: (){

          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
              border: Border.all()
            ),
            height: 80,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.event),
                ),
                Text(each.name)
              ],
            ),
          ),
        );
      },scrollDirection: Axis.horizontal, itemCount: widget._categoryList.length,),
    );
  }
}
