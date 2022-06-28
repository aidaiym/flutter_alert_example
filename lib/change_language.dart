import 'package:alert_example/gulnura.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChangeLanguageCubit(),
      child: const MaterialApp(
        home: ChangeLanguageView(),
      ),
    );
  }
}

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final space = AppSpace.instance;
    final string = AppString.instance;
    return Scaffold(body:
        BlocBuilder<ChangeLanguageCubit, SomeStatus>(builder: (context, state) {
      return Center(
        child: GestureDetector(
            onTap: () => {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                          child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 330,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                                left: 40,
                                right: 40,
                                bottom: 20,
                              ),
                              child: Column(children: [
                                Text(
                                  'Вы уверены что хотите поменять статус?',
                                  style: context.bodyMedium,
                                ),
                                for (var value in SomeStatus.values)
                                  RadioListTile<String>(
                                    title: Text(value
                                        .titleByIndex), // <- Title by extension.
                                    value: value.name,
                                    groupValue: state.name,
                                    toggleable: true,
                                    selected: value.name.contains(state.name),
                                    onChanged: context
                                        .read<ChangeLanguageCubit>()
                                        .onChanged,
                                  ),
                                space.sized10,
                                Positioned(
                                  top: -55,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 25,
                                    maxRadius: 35,
                                    child: ClipRRect(
                                      child: Image.asset(
                                          'assets/images/Vector.png'),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ));
                    },
                  ),
                }),
      );
    }));
  }
}

enum SomeStatus { kyrgyz, russian, english, turkish }

class ChangeLanguageCubit extends Cubit<SomeStatus> {
  ChangeLanguageCubit() : super(SomeStatus.english);

  void onChanged(String? name) {
    emit(SomeStatus.values.byName(name ?? state.name));
  }
}

extension SomeStatusEx on SomeStatus {
  // A useful function for converting value names to UI view.
  // List ordering must contain enum values.
  String get titleByIndex =>
      ['kyrgyz', 'russian', 'english', 'turkish'].elementAt(index);
}


//  Widget build(BuildContext context) {
//     return Provider<Example>(
//       create: (_) => Example(),
//       // Will throw a ProviderNotFoundError, because `context` is associated
//       // to the widget that is the parent of `Provider<Example>`
//       child: Text(context.watch<Example>().toString()),
//     );
//   }
//   ```

//   consider using `builder` like so:

//   ```
//   Widget build(BuildContext context) {
//     return Provider<Example>(
//       create: (_) => Example(),
//       // we use `builder` to obtain a new `BuildContext` that has access to the provider
//       builder: (context, child) {
//         // No longer throws
//         return Text(context.watch<Example>().toString());
//       }
//     );
//   }