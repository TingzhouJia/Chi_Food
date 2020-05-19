
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CouponOrderList extends StatefulWidget {
  @override
  _CouponOrderListState createState() => _CouponOrderListState();
}

class _CouponOrderListState extends State<CouponOrderList> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 600),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 100.0,
              floating: true,
              snap: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.pin,
                  background:CouponList()
              ),
            ),



          ];
        },
        body:  ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title:Text( "标题$index"),);
          },
          itemCount: 50,
        ),

      ),
    );
  }
  final images=['assets/img/banner1.jpeg','assets/img/banner2.jpeg','assets/img/banner3.jpeg','assets/img/banner4.jpeg'];
  Widget CouponList(){
    return ListView(

    );
  }
}
