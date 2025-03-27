import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData? iconData;
  final double? iconSize;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final Widget? child;
  final String? label;
  final double? labelSize;

  const TabItem({
    Key? key,
    required this.isActive,
    this.iconData,
    this.iconSize = 24,
    this.activeColor = Colors.deepPurpleAccent,
    this.inactiveColor = Colors.black,
    this.child,
    this.label,
    this.labelSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => child ?? _buildDefaultTab();

  Widget _buildDefaultTab() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: isActive ? activeColor : inactiveColor,
          size: iconSize,
        ),
        if (label != null) ...[
          const SizedBox(height: 4),
          Text(
            label!,
            style: TextStyle(
              color: isActive ? activeColor : inactiveColor,
              fontSize: labelSize,
            ),
          ),
        ],
      ],
    );
  }
}
