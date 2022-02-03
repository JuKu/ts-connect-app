import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  VoidCallback? onPressedButton;
  Widget child;

  StyledButton(
      {Key? key, required this.onPressedButton, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          //borderRadius: const BorderRadius.all(2),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  width: 300,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 80.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: onPressedButton,
                child: child,
              ),
            ],
          ),
        )
      ],
    );
  }
}
