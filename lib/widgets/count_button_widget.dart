import 'package:flutter/material.dart';

class CountButtonWidget extends StatelessWidget {
  const CountButtonWidget({
    Key? key,
    this.count,
    required this.iconData,
    this.onPressed,
  }) : super(key: key);

  final int? count;
  final IconData iconData;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          GestureDetector(
            child: Icon(
              iconData,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: onPressed,
          ),
          count != null && count! > 0
              ? Text(
                  count!.toString(),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
