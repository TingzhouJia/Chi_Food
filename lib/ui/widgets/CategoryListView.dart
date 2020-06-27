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
  List<String>a=['guide1.jpeg','guide2.jpeg','guide3.jpeg','guide4.jpeg'];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 150),
      padding: EdgeInsets.only(bottom: 20.0),
      margin: EdgeInsets.only(bottom: 10),
      child: ListView.builder(itemBuilder: (BuildContext context,int index){
        Category each= widget._categoryList[index];
        return GestureDetector(
          onTap: (){
          },
          child: Container(
           //constraints: BoxConstraints(maxHeight: 80),
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
//                  padding: EdgeInsets.all(20.0),
                constraints: BoxConstraints(maxHeight: 60,maxWidth: 60),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('$asset${a[index%a.length]}'),fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffd3d3d3),blurRadius: 10.0,spreadRadius: 2.0,offset: Offset(0.0,1.0)
                      )
                    ]
                  ),

                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 70),
                  child: Text(each.name,overflow: TextOverflow.ellipsis,),
                )
              ],
            ),
          ),
        );
      },scrollDirection: Axis.horizontal, itemCount: widget._categoryList.length,),
    );
  }
}
