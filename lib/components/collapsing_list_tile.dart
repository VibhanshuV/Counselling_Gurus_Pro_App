import 'package:counselling_gurus/models/themes.dart';
import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animationController,
      this.isSelected = false,
      this.onTap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widthAnimation = Tween<double>(begin: 220.0, end: 70.0)
        .animate(widget.animationController);
    sizedBoxAnimation = Tween<double>(begin: 10.0, end: 0.0)
        .animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: widget.isSelected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? selectedColor : Colors.white30,
              size: 25.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 200)
                ? Text(
                    widget.title,
                    style: widget.isSelected
                        ? listTileSelectedTextStyle
                        : listTileDefaultTextStyle,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}