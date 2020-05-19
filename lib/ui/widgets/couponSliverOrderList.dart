
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CouponOrderList extends StatefulWidget {
  @override
  _CouponOrderListState createState() => _CouponOrderListState();
}

class _CouponOrderListState extends State<CouponOrderList> {
  SlidableState state;
  SlidableController slidableController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    state = new SlidableState();
    slidableController = SlidableController(
//      onSlideAnimationChanged: handleSlideAnimationChanged,
//      onSlideIsOpenChanged: handleSlideIsOpenChanged,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Slidable(
            actionExtentRatio: 0.25,
            actionPane: SlidableScrollActionPane(),
            key: Key('key$index'),
            dismissal: SlidableDismissal(
              child: SlidableDrawerDismissal(),
              closeOnCanceled: true,
            ),
            secondaryActions: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: 5.0, bottom: 5.0, right: 5.0, left: 5.0),
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xfff0efef),
                          blurRadius: 5.0,
                          offset: Offset(3.0, 3.0))
                    ]),
                child: IconSlideAction(
                  caption: 'Delete',
                  color: Colors.red,
                  icon: Icons.delete,
                  onTap: (){
                  },
                  closeOnTap: true,
                ),
              ),

            ],
            closeOnScroll: true,
            child: GestureDetector(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          image: DecorationImage(image: AssetImage('assets/img/guide2.jpeg'),fit: BoxFit.fill)
                      ),
                      width: 75.0,
                      height: 75.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 150),
                          child: Text('Pumpkin Cream Soup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                        )
                      ],
                    ),
                    Text('\$ 19.9',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16.0),)
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 50,
      ),
    );
  }

}
