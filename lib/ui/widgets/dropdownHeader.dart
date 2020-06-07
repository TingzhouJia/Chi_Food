import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dropdownController.dart';

typedef OnItemTap<T> = void Function(T value);

class GZXDropDownHeader extends StatefulWidget {
  final Color color;
  final double borderWidth;
  final Color borderColor;
  final TextStyle style;
  final TextStyle dropDownStyle;
  final double iconSize;
  final Color iconColor;
  final Color iconDropDownColor;

//  final List<String> menuStrings;
  final double height;
  final double dividerHeight;
  final Color dividerColor;
  final GZXDropdownMenuController controller;
  final OnItemTap onItemTap;
  final List<GZXDropDownHeaderItem> items;
  final GlobalKey stackKey;

  GZXDropDownHeader({
    Key key,
    @required this.items,
    @required this.controller,
    @required this.stackKey,
    this.style = const TextStyle(color: Color(0xFF666666), fontSize: 13),
    this.dropDownStyle,
    this.height = 40,
    this.iconColor = const Color(0xFFafada7),
    this.iconDropDownColor,
    this.iconSize = 20,
    this.borderWidth = 1,
    this.borderColor = const Color(0xFFeeede6),
    this.dividerHeight = 20,
    this.dividerColor = const Color(0xFFeeede6),
    this.onItemTap,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  _GZXDropDownHeaderState createState() => _GZXDropDownHeaderState();
}

class _GZXDropDownHeaderState extends State<GZXDropDownHeader> with SingleTickerProviderStateMixin {
  bool _isShowDropDownItemWidget = false;
  double _screenWidth;
  int _menuCount;
  GlobalKey _keyDropDownHeader = GlobalKey();
  TextStyle _dropDownStyle;
  Color _iconDropDownColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(_onController);
  }

  _onController() {
    if (mounted) {
      setState(() {});
    }
//    print(widget.controller.menuIndex);
  }
  @override
  Widget build(BuildContext context) {
    _dropDownStyle =  TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold);
    _iconDropDownColor = Colors.white;

    MediaQueryData mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _menuCount = widget.items.length;

    var gridView = GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      key: _keyDropDownHeader,
      crossAxisCount: _menuCount,
      childAspectRatio: (_screenWidth / _menuCount) / widget.height,
      children: widget.items.map<Widget>((item) {
        return _menu(item);
      }).toList(),
    );

    return gridView;
  }

  dispose() {
    super.dispose();
  }
  _menu(GZXDropDownHeaderItem item) {
    int index = widget.items.indexOf(item);
    int menuIndex = widget.controller.menuIndex;
    _isShowDropDownItemWidget = index == menuIndex && widget.controller.isShow;
    return GestureDetector(
      onTap: () {
        final RenderBox overlay = widget.stackKey.currentContext.findRenderObject();
        final RenderBox dropDownItemRenderBox = _keyDropDownHeader.currentContext.findRenderObject();
        var position = dropDownItemRenderBox.localToGlobal(Offset.zero, ancestor: overlay);
//        print("POSITION : $position ");
        var size = dropDownItemRenderBox.size;
//        print("SIZE : $size");
        widget.controller.dropDownHeaderHeight = size.height + position.dy;
        if (index == menuIndex) {
          if (widget.controller.isShow) {
            widget.controller.hide();
          } else {
            widget.controller.show(index);
          }
        } else {
          if (widget.controller.isShow) {
            widget.controller.hide(isShowHideAnimation: false);
          }
          widget.controller.show(index);
        }

        if (widget.onItemTap != null) {
          widget.onItemTap(index);
        }

        setState(() {});
      },
      child: Container(
        color:widget.color!=null?widget.color:Theme.of(context).primaryColor,
        constraints: BoxConstraints(maxHeight: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: _isShowDropDownItemWidget ? _dropDownStyle : widget.style.merge(item.style),
                    ),
                  ),
                  Icon(
                    !_isShowDropDownItemWidget ? item.iconData ?? Icons.arrow_drop_down : item.iconData ?? Icons.arrow_drop_up,
                    color: _isShowDropDownItemWidget ? _iconDropDownColor : item?.style?.color ?? widget.iconColor,
                    size: item.iconSize ?? widget.iconSize,
                  ),
                ],
              ),
            ),
            index == widget.items.length - 1
                ? Container()
                : Container(
              height: widget.dividerHeight,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: widget.dividerColor, width: 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}

class GZXDropDownHeaderItem {
  final String title;
  final IconData iconData;
  final double iconSize;
  final TextStyle style;
  GZXDropDownHeaderItem(this.title, {this.iconData, this.iconSize, this.style});
}
class SortCondition {
  String name;
  bool isSelected;
  String id;
  SortCondition({this.name, this.isSelected,String id});
}