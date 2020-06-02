import 'package:flutter/material.dart';

class AppFloatBox extends StatefulWidget {
  int item_count;

  AppFloatBox(this.item_count);

  @override
  _AppFloatBoxState createState() => _AppFloatBoxState();
}

class _AppFloatBoxState extends State<AppFloatBox> {
  Offset offset = Offset(10, kToolbarHeight + 100);

  Offset _calOffset(Size size, Offset offset, Offset nextOffset) {
    double dx = 0;
    //水平方向偏移量不能小于0不能大于屏幕最大宽度
    if ((offset.dx + nextOffset.dx <= 0)) {
      dx = 0;
    } else if (offset.dx + nextOffset.dx >= (size.width - 50)) {
      dx = size.width - 50;
    } else {
      dx = offset.dx + nextOffset.dx;
    }
    double dy = 0;
    //垂直方向偏移量不能小于0不能大于屏幕最大高度
    if (offset.dy + nextOffset.dy >= (size.height - 100)) {
      dy = size.height - 100;
    } else if (offset.dy + nextOffset.dy <= kToolbarHeight) {
      dy = kToolbarHeight+70;
    } else {
      dy = offset.dy + nextOffset.dy;
    }
    return Offset(
      dx,
      dy,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      left: offset.dx,
      top: offset.dy,
      child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/Order');
          },
          onPanUpdate: (detail) {
            setState(() {
              offset =
                  _calOffset(MediaQuery.of(context).size, offset, detail.delta);
            });
          },
          onPanEnd: (detail) {},
          child: _cart()
      ),
    );

  }
  Widget _cart(){
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding:EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
            boxShadow: [BoxShadow(color: Color(0xfff4f4f3),offset: Offset(1.0,2.0),blurRadius: 2.0,spreadRadius: 1.0)]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(

              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.shopping_basket),
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.only(right: 10.0),
            ),
            Text('${widget.item_count} items',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14.0),)
          ],
        ),
      ),
    );
  }
}

