import 'package:flutter/material.dart';

import 'gulnura.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final space = AppSpace.instance;
    final string = AppString.instance;

    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Simple Alert Dialog'),
                            ),
                            onPressed: () => {
                                  showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                height: 290,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 50,
                                                    left: 30,
                                                    right: 30,
                                                    bottom: 20,
                                                  ),
                                                  child: Column(children: [
                                                    Text(
                                                      string.alertDialog,
                                                      style: context.bodyMedium,
                                                    ),
                                                    space.sized10,
                                                    FlatButton(
                                                      height: 40,
                                                      minWidth: 280,
                                                      onPressed: () {},
                                                      child: Text(
                                                        string.ky,
                                                        style:
                                                            context.bodyMedium,
                                                      ),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18),
                                                      ),
                                                      color: Colors.orange,
                                                    ),
                                                    space.sized10,
                                                    FlatButton(
                                                      height: 40,
                                                      minWidth: 300,
                                                      onPressed: () {
                                                        // Navigator.of(context).push();
                                                      },
                                                      child: Text(
                                                        string.ky,
                                                        style:
                                                            context.bodyMedium,
                                                      ),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18),
                                                      ),
                                                      color: Colors.deepOrange,
                                                    ),
                                                    space.sized10,
                                                    FlatButton(
                                                      height: 40,
                                                      minWidth: 300,
                                                      onPressed: () {
                                                        // Navigator.of(context).pop();
                                                      },
                                                      child: Text(
                                                        string.ky,
                                                        style:
                                                            context.bodyMedium,
                                                      ),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18),
                                                      ),
                                                      color: Colors.greenAccent,
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Positioned(
                                                top: -28,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.blue,
                                                  minRadius: 20,
                                                  maxRadius: 35,
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                        'assets/icons/vector.svg'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                })
                      ])))),
    );
  }
}
