import 'package:flutter/material.dart';

import '../atoms/elevated_container.dart';

class Pressable extends StatefulWidget {
  const Pressable({
    Key? key,
    required this.onTap,
    required this.child,
    this.enabled = true,
  }) : super(key: key);

  final bool enabled;
  final Widget child;
  final VoidCallback onTap;

  @override
  State<Pressable> createState() => _PressableState();
}

class _PressableState extends State<Pressable> {
  bool _isElevated = true;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.enabled
          ? (_) {
              setState(() {
                _isElevated = false;
              });
            }
          : null,
      onTapUp: widget.enabled
          ? (_) {
              setState(() {
                _isElevated = true;
              });
            }
          : null,
      onTap: widget.enabled ? widget.onTap : null,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovering = false;
          });
        },
        child: ElevatedContainer(
          isElevated: _isElevated,
          withBorder: _isHovering,
          child: widget.child,
        ),
      ),
    );
  }
}
