import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Logic {
  double firstNo = 0;
  double secondNo = 0;

  dynamic firstResult = '';
  dynamic finalResult = '0';
  dynamic operation = '';

  void reset() {
    firstNo = 0;
    secondNo = 0;
    firstResult = '';
    finalResult = '0';
    operation = '';
  }

  void setNumber(number) {
    firstResult = firstResult + number;
    finalResult = firstResult;
  }

  void parseNumber() {
    if (firstNo == 0) {
      firstNo = double.parse(firstResult);
    } else {
      secondNo = double.parse(firstResult);
    }
  }

  void performOperation(symbol) {
    operation = symbol;
    firstResult = '';

  }
  void add() {
    parseNumber();
    performOperation('+');
  }

  void mul() {
    parseNumber();
    performOperation('x');
  }

  void sub() {
    parseNumber();
    performOperation('-');
  }

  void div() {
    parseNumber();
    performOperation('/');
  }
  void percentage() {
    firstResult = (firstNo / 100).toString();
    finalResult = firstResult;
  }

  void decimal() {
    if (!firstResult.toString().contains('.')) {
      firstResult = firstResult.toString() + '.';
    }
    finalResult = firstResult;
  }

  void negative() {
    firstResult.toString().startsWith('-')
        ? firstResult = firstResult.toString().substring(1)
        : firstResult = '-' + firstResult.toString();
    finalResult = firstResult;
  }

  void execute() {
    parseNumber();
      if (operation == '+') {
        addCalculation();
      } else if (operation == '-') {
        subCalculation();
      } else if (operation == 'x') {
        mulCalculation();
      } else if (operation == '/') {
        divCalculation();
      }
  }

  void addCalculation() {
    firstResult = (firstNo + secondNo).toString();
    firstNo = double.parse(firstResult);
    finalResult = firstResult;

  }

  void subCalculation() {
    firstResult = (firstNo - secondNo).toString();
    firstNo = double.parse(firstResult);
    finalResult = firstResult;

  }
  void mulCalculation() {
    firstResult = (firstNo * secondNo).toString();
    firstNo = double.parse(firstResult);
    finalResult = firstResult;
  }
  void divCalculation() {
    firstResult = (firstNo / secondNo).toString();
    firstNo = double.parse(firstResult);
    finalResult = firstResult;
  }

}
