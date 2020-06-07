
import 'package:flutter/material.dart';

import 'dropdownHeader.dart';
class ConditionListWidget extends StatelessWidget {
  List<SortCondition> items;
  void Function(SortCondition) itemOnTap;
  SortCondition curSort;
  ConditionListWidget(this.items, this.itemOnTap,this.curSort);

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      // item 的个数
      separatorBuilder: (BuildContext context, int index) => Divider(height: 1.0),
      // 添加分割线
      itemBuilder: (BuildContext context, int index) {
        SortCondition goodsSortCondition = items[index];
        curSort??=SortCondition(name: "All");
        return GestureDetector(
          onTap: () {

            for (var value in items) {
              value.isSelected = false;
            }
            goodsSortCondition.isSelected = true;

            itemOnTap(goodsSortCondition);
          },
          child: Container(
//            color: Colors.blue,
            height: 40,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    goodsSortCondition.name,
                    style: TextStyle(
                      color: goodsSortCondition.name==curSort.name? Theme.of(context).primaryColor : Colors.black,
                    ),
                  ),
                ),
                goodsSortCondition.name==curSort.name
                    ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                  size: 16,
                )
                    : SizedBox(),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

