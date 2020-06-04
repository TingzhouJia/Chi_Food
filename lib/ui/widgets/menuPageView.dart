
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderEvent.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/model/menuItem.dart';
import 'package:chifood/model/orderItem.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/service/orderSort.dart';
import 'package:chifood/ui/widgets/AddBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

import 'modalScroll.dart';

class MenuPageView extends StatefulWidget {
  const MenuPageView(this.itemList,this.restaurants);
  final Restaurants restaurants;
  final List<MenuItem> itemList;



  @override
  _MenuPageViewState createState() => _MenuPageViewState();
}

class _MenuPageViewState extends State<MenuPageView> with AutomaticKeepAliveClientMixin{
  int count=1;
  @override
  void initState(){
    super.initState();
  }

  void add(int val){
      setState(() {
        count=val;
      });
  }


  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      final MenuItem item=widget.itemList[index];
        return GestureDetector(
          onTap: (){
            showModalBottomSheet(context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                builder: (BuildContext context){
                 return new Container(
                  height: 350.0,
                  //color: Colors.transparent, //could change this to Color(0xFF737373),
                  //so you don't have to change MaterialApp canvasColor
                  child: new Container(
                    padding: EdgeInsets.all(20.0),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(30.0),
                              topRight: const Radius.circular(30.0))),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            child: Image.network(item.strMealThumb,width: 150,height: 150,fit: BoxFit.fill,),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          Positioned(
                            left: 180,
                            top: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxWidth: 150
                                  ),
                                  child:Text(item.strMeal,style: TextStyle(
                                      fontSize: 14.0,fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.favorite),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.bookmark),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 100,
                            left: 10,
                            right: 10,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                AddBar(add),

                                Text('\$ 18.0',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          BlocBuilder<OrderBloc,OrderState>(
                            bloc: BlocProvider.of<OrderBloc>(context),
                            builder: (BuildContext context, OrderState state){
                              if(state is NoOrderState){
                                return Positioned(
                                  bottom: 15,
                                  left: 10,
                                  right: 10,
                                  child: CupertinoButton(
                                    disabledColor: Theme.of(context).primaryColor,
                                    color: Colors.yellow,
                                    onPressed: (){
                                      OrderItem cur=OrderItem((a)=>a ..strMeal=item.strMeal ..price=18.0 ..strMealThumb=item.strMealThumb ..idMeal=item.idMeal ..count=count ..restaurant=widget.restaurants.toBuilder());

                                      BlocProvider.of<OrderBloc>(context).add(AddRemoveOrderEvent([[cur]]));
                                      Navigator.pop(context);
                                    },
                                    child: Text('Add To Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.black),),
                                  ),
                                );
                              }else if(state is OrderListState ){
                                return Positioned(
                                  bottom: 15,
                                  left: 10,
                                  right: 10,
                                  child: CupertinoButton(
                                    disabledColor: Theme.of(context).primaryColor,
                                    color: Colors.yellow,
                                    onPressed: (){
                                      OrderItem cur=OrderItem((a)=>a ..price=18.0 ..strMeal=item.strMeal ..strMealThumb=item.strMealThumb ..idMeal=item.idMeal ..count=count ..restaurant=widget.restaurants.toBuilder());
                                      List<List<OrderItem>> a=state.orderList;
                                      a=SortList(cur, a);
                                      BlocProvider.of<OrderBloc>(context).add(AddRemoveOrderEvent(a));
                                      Navigator.pop(context);
                                    },
                                    child: Text('Add To Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.black),),
                                  ),
                                );
                              }
                              return Positioned(
                                bottom: 15,
                                left: 10,
                                right: 10,
                                child: CupertinoButton(
                                  disabledColor: Theme.of(context).primaryColor,
                                  color: Colors.yellow,
                                  onPressed: (){
                                    Navigator.pop(context);

                                  },
                                  child: Text('Add To Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.black),),
                                ),
                              );


                            },
                          )
                        ],
                      )

                  ),
                );
            },isScrollControlled: true);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.46),
                                blurRadius: 10.0,
                                offset: Offset(1.0,5.0)
                              )
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: item.strMealThumb,width: 70,height: 70,),
                          ),
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
                          color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).primaryColor),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffd3d3d3).withOpacity(0.9),
                            offset: Offset(0,3),
                            blurRadius: 2.0
                          )
                        ]
                      ),
                      child: Icon(Icons.add,size: 17.0,color: Theme.of(context).primaryColor,),
                    )
                  ],
                ),
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
