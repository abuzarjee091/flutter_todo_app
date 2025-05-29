import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key, required this.color, required this.child});
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
                                    padding: EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // ignore: deprecated_member_use
                                      color: color,
                                      // ignore: deprecated_member_use
                                      border: Border.all(
                                        width: 2,
                                        color: color
                                      )
                                    ),
                                    child: Center(
                                      child: child
                                  )
                                );
  }
}