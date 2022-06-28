import 'dart:ui';

import 'package:alert_example/gulnura.dart';
import 'package:alert_example/not_with_bloc.dart';
import 'package:alert_example/toknow.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'alert_one.dart';
import 'change_language.dart';
import 'cubit_radio.dart';

void main() => runApp(ChangeLanguageAlert());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: MyAppTwo(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dialog'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text(
//             'Delete Item',
//           ),
//           onPressed: () {
//             showAlertDialog2();
//           },
//         ),
//       ),
//     );
//   }

//   void showAlertDialog2() {
//     AwesomeDialog(
//       context: context,
//       dialogType: DialogType.WARNING,
//       animType: AnimType.BOTTOMSLIDE,
//       title: 'Вы уверены что хотите поменять статус?',
//       btnCancelOnPress: () {},
//       btnOkOnPress: () {},
//     ).show();
//   }

//   // void showAlertDialog() {
//   //   showDialogs(
//   //       barrierDismissible: false,
//   //       context: context,
//   //       builder: (BuildContext context) {
//   //         return BackdropFilter(
//   //           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//   //           child: AlertDialog(
//   //             title: const Text('Delete?'),
//   //             content: const Text('Are you sure you want to delete this item?'),
//   //             actions: [
//   //               ElevatedButton(
//   //                   style: ElevatedButton.styleFrom(primary: Colors.green),
//   //                   onPressed: () {
//   //                     Navigator.pop(context);
//   //                   },
//   //                   child: const Text('No')),
//   //               ElevatedButton(
//   //                   style: ElevatedButton.styleFrom(primary: Colors.red),
//   //                   onPressed: () {
//   //                     // Write code to delete item
//   //                   },
//   //                   child: const Text(
//   //                     'Delete',
//   //                   )),
//   //             ],
//   //           ),
//   //         );
//   //       });

// }

// // class MyAlert extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(20.0),
// //       child: GestureDetector(
// //         child: Center(child: Text('Show alert')),
// //         onTap: () {
// //           AppAlert.alert(
// //               context: context,
// //               color: Colors.transparent,
// //               tittle: BlocProvider.value(
// //                 value: BlocProvider.of(context),
// //                 child: ChangeStatusAlert(status: Text('s')),
// //               ));
// //         },
// //       ),
// //     );
// //   }
// // }

class showDialogs extends StatelessWidget {
  const showDialogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    fit: StackFit.loose,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 5, left: 10, bottom: 10, right: 10),
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Image.asset('assets/images/Vector.png')),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 65, left: 10, bottom: 10, right: 10),
                          padding: const EdgeInsets.only(
                              bottom: 1, right: 10, top: 10, left: 10),
                          child: Center(
                              child: Text(
                                  'Вы уверены что хотите поменять статус?'))),
                    ]),
                actions: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 150.0,
                          height: 40.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Любимые'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150.0,
                          height: 40.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                            ),
                            child: Text(
                              'Планированные',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150.0,
                          height: 40.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                              ),
                              onPressed: () {},
                              child: Text('Прочитанные')),
                        ),
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
