import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final Image iconData;
  final double iconSize;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;
  final String title;
  final Widget child;

  const TabItem({
    Key key,
    this.iconData,
    this.iconSize,
    this.isActive,
    this.activeColor,
    this.inactiveColor,
    this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCustomTab = child != null;

    return isCustomTab ? child : _buildDefaultTab();
  }

  Widget _buildDefaultTab() {
    return title == null
        ? Image(
            image: iconData.image,
            color: isActive ? activeColor : inactiveColor,
            height: iconSize,
            width: iconSize,
          )
        : Center(
            child: Wrap(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: iconData.image,
                      color: isActive ? activeColor : inactiveColor,
                      height: iconSize,
                      width: iconSize,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      title,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 11,
                          color: isActive ? activeColor : inactiveColor),
                    )
                  ],
                )
              ],
            ),
          );
  }
}
