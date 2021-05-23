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

  void _reset_all() {
    setState(() {
      _num1 = 0;
      _num2 = 0;
      _sum12 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Num #1: ${_num1 < 8 ? binary_array[_num1] : "Overflow!"}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: _increNum1,
                child: Text(
                  "Increment Num #1",
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Num #2: ${_num2 < 8 ? binary_array[_num2] : "Overflow!"}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: _increNum2,
                child: Text(
                  "Increment Num #2",
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: _calSum12,
            child: Icon(
              Icons.add,
              size: 45,
            ),
          ),
          Text(
            "Num #1 + Num #2 = ${_sum12 < 8 ? binary_array[_sum12] : "Overflow!"}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: _reset_all,
            child: Text("Reset All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
