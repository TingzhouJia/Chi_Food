
import 'package:chifood/model/menuItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MenuPageView extends StatefulWidget {
  const MenuPageView(this.itemList);
  final List<MenuItem> itemList;



  @override
  _MenuPageViewState createState() => _MenuPageViewState();
}

class _MenuPageViewState extends State<MenuPageView> with AutomaticKeepAliveClientMixin{

  @override
  void initState(){
    super.initState();
  }


  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      final MenuItem item=widget.itemList[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: item.strMealThumb,width: 70,height: 70,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: <Widget>[
                          ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width*0.5
                            ),
                            child: Text(item.strMeal,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0),),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Theme.of(context).primaryColor)
                    ),
                    child: Icon(Icons.add,size: 17.0,color: Theme.of(context).primaryColor,),
                  )
                ],
              ),
        );
    },
      itemCount: widget.itemList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }

  @override

  bool get wantKeepAlive => true;
}
