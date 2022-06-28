import 'package:flutter/material.dart';

class AlertDialog2 extends StatelessWidget {
  const AlertDialog2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final space = AppSpace.instance;
    final string = AppString.instance;
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                          space.sized10,
                                          AppStyleWidget(
                                            child: Text(
                                              string.ky,
                                              style: context.bodyMedium,
                                            ),
                                          ),
                                          space.sized10,
                                          AppStyleWidget(
                                            child: Text(
                                              'string.ru',
                                              style: context.bodyMedium,
                                            ),
                                          ),
                                          space.sized10,
                                          AppStyleWidget(
                                            child: Text(
                                              'string.en',
                                              style: context.bodyMedium,
                                            ),
                                          ),
                                          space.sized10,
                                          AppStyleWidget(
                                            child: Text(
                                              '                                              string.ru',
                                              style: context.bodyMedium,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
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
                                  ]));
                            })
                      })
            ])),
      ),
    );
  }
}

class AppStyleWidget extends StatefulWidget {
  AppStyleWidget({
    Key? key,
    this.text,
    this.function,
    this.textStyle,
    this.color,
    this.child,
    this.height,
    this.width,
    this.onChanged,
  }) : super(key: key);
  final String? text;

  final Function()? function;
  final TextStyle? textStyle;
  final Color? color;
  final Widget? child;
  final double? height;
  final double? width;
  final Function(String)? onChanged;

  @override
  State<AppStyleWidget> createState() => _AppStyleWidgetState();
}

class _AppStyleWidgetState extends State<AppStyleWidget> {
  final string = AppString.instance;

  final space = AppSpace.instance;

  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          // child:  child!,
          onPressed: () {},
          height: 40,
          minWidth: 300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          color: const Color.fromARGB(255, 234, 177, 92),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value as int?;
                    color:
                    Colors.white;
                    Text('string.ky');
                  });
                  Text('string.ky');
                },
              ),
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value as int?;
                    color:
                    Colors.white;
                  });
                  Text('');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppString {
  AppString._init();

  static AppString? _instance;
  // ignore: prefer_constructors_over_static_methods
  static AppString get instance {
    _instance ??= AppString._init();
    return _instance!;
  }

  final String alertDialog = 'kyrgyz';
  final String ky = 'kyrgyz';
}

class AppSpace {
  AppSpace._init();
  static AppSpace? _instance;
  // ignore: prefer_constructors_over_static_methods
  static AppSpace get instance {
    _instance ??= AppSpace._init();
    return _instance!;
  }

  final sized10 = const SizedBox(height: 10);
  final sized15 = const SizedBox(height: 15);
  final sized17 = const SizedBox(height: 17);
  final sized20 = const SizedBox(height: 20);
  final sized23 = const SizedBox(height: 23);
  final sized24 = const SizedBox(height: 24);
  final sized25 = const SizedBox(height: 25);
  final sized30 = const SizedBox(height: 30);
  final sized35 = const SizedBox(height: 35);
  final sized40 = const SizedBox(height: 40);
  final sized45 = const SizedBox(height: 45);
  final sized47 = const SizedBox(height: 47);
  final sized50 = const SizedBox(height: 50);
  final sized55 = const SizedBox(height: 55);
  final sized60 = const SizedBox(height: 60);
  final sized65 = const SizedBox(height: 65);
  final sized70 = const SizedBox(height: 70);
  final sized75 = const SizedBox(height: 75);
  final sized80 = const SizedBox(height: 80);
  final sized85 = const SizedBox(height: 85);
  final sized90 = const SizedBox(height: 90);
  final sized95 = const SizedBox(height: 95);
  final sized107 = const SizedBox(height: 107);

  /// Spaces Width
  final sizedW10 = const SizedBox(width: 10);
  final sizedW15 = const SizedBox(width: 15);
  final sizedW20 = const SizedBox(width: 20);
  final sizedW25 = const SizedBox(width: 25);
  final sizedW30 = const SizedBox(width: 30);
  final sizedW35 = const SizedBox(width: 35);
  final sizedW40 = const SizedBox(width: 40);
  final sizedW45 = const SizedBox(width: 45);
  final sizedW50 = const SizedBox(width: 50);
  final sizedW55 = const SizedBox(width: 55);
  final sizedW60 = const SizedBox(width: 60);
  final sizedW65 = const SizedBox(width: 65);
  final sizedW70 = const SizedBox(width: 70);
  final sizedW75 = const SizedBox(width: 75);
  final sizedW80 = const SizedBox(width: 80);
  final sizedW85 = const SizedBox(width: 85);
  final sizedW90 = const SizedBox(width: 90);
  final sizedW95 = const SizedBox(width: 95);

  //HomePage // BookCard
  final sized2 = const SizedBox(height: 2);
  final sizedW5 = const SizedBox(width: 5);
}

extension TypographyUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;

  TextStyle? get displayLarge => textTheme.displayLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get displayMedium => textTheme.displayMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get displaySmall => textTheme.displaySmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get headlineLarge => textTheme.headlineLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get headlineMedium => textTheme.headlineMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get headlineSmall => textTheme.headlineSmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get titleLarge => textTheme.titleLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get titleMedium => textTheme.titleMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get titleSmall => textTheme.titleSmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelLarge => textTheme.labelLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelMedium => textTheme.labelMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get labelSmall => textTheme.labelSmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get bodyLarge => textTheme.bodyLarge?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get bodyMedium => textTheme.bodyMedium?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get bodySmall => textTheme.bodySmall?.copyWith(
        color: colors.onSurface,
      );
  TextStyle? get linkStyle => textTheme.titleMedium?.copyWith(
        color: const Color(0xff218FDF),
      );
  // TextStyle get h1 => textTheme.headline1!.copyWith(
  //       color: colors.onBackground,
  //     );
}
