import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;

  const GradientButton(
      {Key? key, this.onPressed, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48, // Set the height of the button
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, backgroundColor: Colors.transparent, // Important to make gradient fill the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Rounded corners
          ), // Background color, must be transparent
          shadowColor: Colors.black.withOpacity(0.3),
          elevation: 5,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6D8D70), Color(0xFF6D8D72)],
              // Your gradient colors
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(minWidth: 150, minHeight: 50),
            // Button size
            child: child,
          ),
        ),
      ),
    );
  }
}
