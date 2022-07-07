import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:calculadorabinariodecimalgetx/ui/pages/widgets/bin2dec.dart';
import 'package:calculadorabinariodecimalgetx/ui/pages/widgets/dec2bin.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  late String binary, decimal;
  late String _buttonText;
  late int _widgetID;

  @override
  void initState() {
    super.initState();
    binary = '0';
    decimal = '0';
    _buttonText = "Binary -> Decimal";
    _widgetID = 0;
  }

  void _convert(int? value) {
    setState(() {
      if (value == null) {
        binary = "0";
        decimal = "0";
      } else {
        switch (_widgetID) {
          case 0:
            binary = ConverterManager.adjustValue(binary, value);
            decimal = ConverterManager.bin2dec(binary);
            break;
          case 1:
            decimal = ConverterManager.adjustValue(decimal, value);
            binary = ConverterManager.dec2bin(decimal);
            break;
        }
      }
    });
  }

  void _swapWidget() {
    setState(() {
      switch (_widgetID) {
        case 0:
          _buttonText = "Decimal -> Binary";
          _widgetID = 1;
          break;
        case 1:
          _buttonText = "Binary -> Decimal";
          _widgetID = 0;

          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0.00, 3.00),
                    color: const Color(0xff000000).withOpacity(0.16),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(4.00),
              ),
              child: MaterialButton(
              // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
                onPressed: _swapWidget,
                child: Text(_buttonText),
              ),
            ),
          ),
          Expanded(
            child: _widgetID == 0
                ? Bin2Dec(
                    binary: binary,
                    decimal: decimal,
                    onAction: _convert,
                  )
                : Dec2Bin(
                    binary: binary,
                    decimal: decimal,
                    onAction: _convert,
                  ),
          ),
        ]);
  }
}
