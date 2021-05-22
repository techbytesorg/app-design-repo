import 'package:flutter/material.dart';
import 'data.dart';

class AdderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdderViewState();
  }
}

class _AdderViewState extends State<AdderView> {
  int _num1 = 0;
  int _num2 = 0;
  int _sum12 = 0;

  void _increNum1() {
    setState(() {
      _num1++;
    });
  }

  void _increNum2() {
    setState(() {
      _num2++;
    });
  }

  void _calSum12() {
    setState(() {
      _sum12 = _num1 + _num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Num #1: $_num1",
            ),
            TextButton(
              child: Text(
                "Increment Num #1",
              ),
              onPressed: _increNum1,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Num #2: $_num2",
            ),
            TextButton(
              child: Text(
                "Increment Num #2",
              ),
              onPressed: _increNum2,
            ),
          ],
        ),
      ],
    );
  }
}
