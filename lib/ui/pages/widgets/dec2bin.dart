import 'package:flutter/material.dart';

class Dec2Bin extends StatelessWidget {
  final String binary, decimal;
  final void Function(int?) onAction;

  const Dec2Bin({
    Key? key,
    required this.binary,
    required this.decimal,
    required this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            child: Text(
              decimal,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            child: Text(
              binary,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(1),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // we raise a new event
                    onPressed: () => onAction(2),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // we raise a new event
                    onPressed: () => onAction(3),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(4),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "5",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(5),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "6",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(6),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "7",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(7),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "8",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(8),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    // : Establece el atributo [key] del widget para poder identificarlo en las pruebas

                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      "9",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => onAction(9),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                        // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                        color: Theme.of(context).colorScheme.secondary,
                        onPressed: () => onAction(null),
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                        // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas

                        color: Theme.of(context).primaryColor,
                        child: const Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => onAction(0),
                      ),
                    )),
              ],
            ),
          )),
        ]);
  }
}
