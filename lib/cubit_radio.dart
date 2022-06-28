import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguageAlert extends StatelessWidget {
  const ChangeLanguageAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChangeLanguageCubit(),
      child: const MaterialApp(
        home: TestDialog(),
      ),
    );
  }
}

enum ChangeLanguageStatus { kyrgyz, russian, english, turkish }

class ChangeLanguageCubit extends Cubit<ChangeLanguageStatus> {
  ChangeLanguageCubit() : super(ChangeLanguageStatus.kyrgyz);

  void onChanged(String? name) {
    emit(ChangeLanguageStatus.values.byName(name ?? state.name));
  }
}

extension SomeStatusEx on ChangeLanguageStatus {
  String get titleByIndex =>
      ['kyrgyz', 'russian', 'english', 'turkish'].elementAt(index);
}

class TestDialog extends StatelessWidget {
  const TestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('Тилди озгортуу'),
            onPressed: () => {dialogShow(context)}),
      ),
    );
  }
}

Future<void> dialogShow(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<ChangeLanguageCubit, ChangeLanguageStatus>(
          builder: (context, state) {
            return Dialog(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 40,
                        right: 40,
                        bottom: 20,
                      ),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'Вы уверены что хотите поменять статус?',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          for (var value in ChangeLanguageStatus.values)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xffFFB800),
                                ),
                                height: 50,
                                child: RadioListTile<String>(
                                  activeColor: Colors.white,
                                  title: Text(
                                    value.titleByIndex,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  value: value.name,
                                  groupValue: state.name,
                                  toggleable: true,
                                  selected: value.name.contains(state.name),
                                  onChanged: context
                                      .read<ChangeLanguageCubit>()
                                      .onChanged,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -55,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      minRadius: 25,
                      maxRadius: 35,
                      child: ClipRRect(
                        child: Image.asset('assets/images/Vector.png'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      });
}
