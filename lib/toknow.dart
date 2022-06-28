import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChangeStatusAlert extends StatelessWidget {
  const ChangeStatusAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
              radius: 40, child: SvgPicture.asset('assets/images/Vector.png')),
        ),
        AppContainer(
          margin:
              const EdgeInsets.only(top: 65, left: 10, bottom: 10, right: 10),
          padding:
              const EdgeInsets.only(bottom: 21, right: 10, top: 10, left: 10),
          child: Column(
            children: [
              Text(
                'status.title',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 20,
                      color: Theme.of(context).hintColor,
                    ),
              ),
              Text(
                'AppString.statusCourier',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'AppString.changeStatusDes',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
                ),
              ),
              const SizedBox(height: 15),
              AppButton(
                text: 'AppString.changeStatus',
                color: Theme.of(context).selectedRowColor,
                textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).canvasColor,
                    ),
                // function: () {
                //   context.read<CStatusCubit>().change(status);
                //   Navigator.pop(context);
                // },
              ),
              const SizedBox(height: 15),
              AppButton(
                text: 'AppString.changeCancel',
                color: Theme.of(context).errorColor,
                textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).canvasColor,
                    ),
                // function: () {
                //   context.read<CStatusCubit>().cancel();
                //   Navigator.pop(context);
                // },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppContainer extends StatelessWidget {
  const AppContainer({
    this.child,
    this.backColor,
    this.borderRadius = 10.0,
    this.maxHeight = double.infinity,
    this.maxWidth = double.infinity,
    this.minHeight = 0.0,
    this.minWidth = 0.0,
    this.padding = const EdgeInsets.all(10),
    this.margin = const EdgeInsets.all(10),
    Key? key,
  }) : super(key: key);

  final Color? backColor;
  final Widget? child;
  final double borderRadius;
  final double maxHeight;
  final double maxWidth;
  final double minHeight;
  final double minWidth;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: maxHeight,
        minHeight: minHeight,
        maxWidth: maxWidth,
        minWidth: minWidth,
      ),
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backColor ?? Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    this.text,
    this.color,
    this.function,
    this.textStyle,
    this.child,
    Key? key,
  }) : super(key: key);

  final String? text;
  final Function()? function;
  final TextStyle? textStyle;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: child ??
            Center(
              child: Text(
                text ?? 'AppString.button',
                style: textStyle ?? Theme.of(context).textTheme.headline6,
              ),
            ),
      ),
    );
  }
}

class CourierStatusModel {
  final String title = 'hello';
}
