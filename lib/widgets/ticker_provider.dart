import 'package:flutter/material.dart';

class AnimationProvider extends StatefulWidget {
  final Widget child;

  AnimationProvider({required this.child});

  @override
  _AnimationProviderState createState() => _AnimationProviderState();
}

class _AnimationProviderState extends State<AnimationProvider> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 250),
      vsync: this,
    )..repeat(); // Repeat animation indefinitely

    _animation = Tween<double>(begin: 1, end: 4.14).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ScaleAnimation(animation: _animation, child: widget.child);
      },
    );
  }
}

class ScaleAnimation extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  ScaleAnimation({required this.animation, required this.child});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: animation.value,
      child: child,
    );
  }
}
