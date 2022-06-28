// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class MyAppTwo extends StatelessWidget {
//   const MyAppTwo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => SomeCubit(),
//       child: const MaterialApp(
//         home: MyAppTwoView(),
//       ),
//     );
//   }
// }

// class MyAppTwoView extends StatelessWidget {
//   const MyAppTwoView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<SomeCubit, SomeStatus>(builder: (context, state) {
//         return Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).restorablePush(_dialogBuilder);
//             },
//             child: const Text('Тил озгортуу'),
//           ),
//         );
//       }),
//     );
//   }

//   static Route<Object?> _dialogBuilder(
//       BuildContext context, Object? arguments) {
//     return DialogRoute<void>(
//       context: context,
//       builder: (BuildContext context) => Stack(
//         clipBehavior: Clip.none,
//         alignment: Alignment.topCenter,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             height: 400,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 40,
//                 left: 40,
//                 right: 40,
//                 bottom: 20,
//               ),
//               child: Column(
//                 children: [
//                   Center(
//                     child: Text(
//                       'Вы уверены что хотите поменять статус?',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   for (var value in SomeStatus.values)
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(19),
//                           color: Color(0xffFFB800),
//                         ),
//                         height: 50,
//                         child: RadioListTile<String>(
//                           activeColor: Colors.white,
//                           title: Text(
//                             value.titleByIndex,
//                             style: TextStyle(color: Colors.black),
//                           ),
//                           value: value.name,
//                           groupValue: state.name,
//                           toggleable: true,
//                           selected: value.name.contains(state.name),
//                           onChanged: context.read<SomeCubit>().onChanged,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: -55,
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               minRadius: 25,
//               maxRadius: 35,
//               child: ClipRRect(
//                 child: Image.asset('assets/images/Vector.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum SomeStatus { kyrgyz, russian, english, turkish }

// class SomeCubit extends Cubit<SomeStatus> {
//   SomeCubit() : super(SomeStatus.kyrgyz);

//   void onChanged(String? name) {
//     emit(SomeStatus.values.byName(name ?? state.name));
//   }
// }

// extension SomeStatusEx on SomeStatus {
//   // A useful function for converting value names to UI view.
//   // List ordering must contain enum values.
//   String get titleByIndex =>
//       ['kyrgyz', 'russian', 'english', 'turkish'].elementAt(index);
// }
