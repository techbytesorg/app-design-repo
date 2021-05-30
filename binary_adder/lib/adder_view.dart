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

  String _num1Desc = "";
  String _num2Desc = "";
  String _sum12Desc = "";

  void _increNum1() {
    setState(() {
      if (_num1 < 8) {
        _num1++;
      }
      _num1Desc = (_num1 > 7) ? "Overflow!" : "";
    });
  }

  void _decreNum1() {
    setState(() {
      if (_num1 > -1) {
        _num1--;
      }
      _num1Desc = (_num1 < 0) ? "Underflow!" : "";
    });
  }

  void _increNum2() {
    setState(() {
      if (_num2 < 8) {
        _num2++;
      }
      _num2Desc = (_num2 > 7) ? "Overflow!" : "";
    });
  }

  void _decreNum2() {
    setState(() {
      if (_num2 > -1) {
        _num2--;
      }
      _num2Desc = (_num2 < 0) ? "Underflow!" : "";
    });
  }

  void _calSum12() {
    setState(() {
      _sum12 = _num1 + _num2;
      if ((_num1 >= 0 && _num1 <= 7) && (_num2 >= 0 && _num2 <= 7)) {
        _sum12Desc = (_sum12 > 7) ? "Overflow!" : "";

        history.add("${binary_array[_num1]} + ${binary_array[_num2]} = "
            "${(_sum12 <= 7) ? binary_array[_sum12] : _sum12Desc}");
      } else {
        _sum12Desc = "Imprecise Sum";

        history.add(
            "${(_num1 >= 0 && _num1 <= 7) ? binary_array[_num1] : _num1Desc} + "
            "${(_num2 >= 0 && _num2 <= 7) ? binary_array[_num2] : _num2Desc} = $_sum12Desc");
      }
    });
  }

  void _reset_all() {
    setState(() {
      _num1 = 0;
      _num2 = 0;
      _sum12 = 0;
      _num1Desc = "";
      _num2Desc = "";
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
                "Num #1: ${(_num1 <= 7 && _num1 >= 0) ? binary_array[_num1] : _num1Desc}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: _increNum1,
                child: Icon(
                  Icons.arrow_upward,
                ),
              ),
              TextButton(
                onPressed: _decreNum1,
                child: Icon(
                  Icons.arrow_downward,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Num #2: ${(_num2 <= 7 && _num2 >= 0) ? binary_array[_num2] : _num2Desc}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: _increNum2,
                child: Icon(
                  Icons.arrow_upward,
                ),
              ),
              TextButton(
                onPressed: _decreNum2,
                child: Icon(
                  Icons.arrow_downward,
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
            "Num #1 + Num #2 = ${(_sum12 >= 0 && _sum12 <= 7) ? binary_array[_sum12] : _sum12Desc}",
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
          SizedBox(height: 10),
          ListView.builder(
              shrinkWrap: true,
              itemCount: history.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  heightFactor: 2.0,
                  child: Text(
                    "${history[index]}",
                    style: TextStyle(fontSize: 15),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
