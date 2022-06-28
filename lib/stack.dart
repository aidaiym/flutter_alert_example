// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class LoginPage extends StatefulWidget {
//   final bool enableArrow;
//   LoginPage({Key? key, this.enableArrow = false}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool pwdSwitch = false;
//   GlobalKey _formKey = GlobalKey<FormState>();
//   TextEditingController _unameController = TextEditingController();
//   TextEditingController _pwdController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // ScreenUtil.init(context,   width: 375, height: 812 - 44 - 34, allowFontScaling: true);

//     return Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/login/bg.png'), fit: BoxFit.cover)),
//         child: Scaffold(
//             backgroundColor: Colors.transparent,
//             body: SingleChildScrollView(
//                 child: Stack(children: <Widget>[
//               Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(height: duSetHeight(160)),
//                     Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 20),
//                         child: Container(
//                             width: double.infinity,
//                             padding: EdgeInsets.symmetric(horizontal: 20),
//                             decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(.7),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(20))),
//                             child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   SizedBox(height: duSetHeight(80)),
//                                   Form(
//                                       key: _formKey,
//                                       autovalidateMode:
//                                           AutovalidateMode.disabled,
//                                       child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           children: <Widget>[
//                                             TextFormField(
//                                                 controller: _unameController,
//                                                 decoration: InputDecoration(
//                                                     prefixIcon: Icon(
//                                                       Icons.account_circle,
//                                                       color: Colors.blueAccent,
//                                                     ),
//                                                     filled: true,
//                                                     fillColor:
//                                                         HexColor('#EFEFEF'),
//                                                     enabledBorder: OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0x00FF0000)),
//                                                         borderRadius:
//                                                             BorderRadius.all(
//                                                                 Radius.circular(
//                                                                     100))),
//                                                     hintText: 'Email',
//                                                     focusedBorder: OutlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Color(
//                                                                 0x00000000)),
//                                                         borderRadius:
//                                                             BorderRadius.all(
//                                                                 Radius.circular(
//                                                                     100))))),
//                                             SizedBox(height: duSetHeight(20)),
//                                             TextFormField(
//                                               controller: _pwdController,
//                                               keyboardType:
//                                                   TextInputType.visiblePassword,
//                                               decoration: InputDecoration(
//                                                   prefixIcon: Icon(
//                                                     Icons.offline_bolt,
//                                                     color: Colors.blueAccent,
//                                                   ),
//                                                   filled: true,
//                                                   fillColor:
//                                                       HexColor('#EFEFEF'),
//                                                   enabledBorder:
//                                                       OutlineInputBorder(
//                                                           borderSide: BorderSide(
//                                                               color: Color(
//                                                                   0x00FF0000)),
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       100))),
//                                                   hintText: 'Password',
//                                                   focusedBorder: OutlineInputBorder(
//                                                       borderSide: BorderSide(
//                                                           color: Color(
//                                                               0x00000000)),
//                                                       borderRadius:
//                                                           BorderRadius.all(
//                                                               Radius.circular(
//                                                                   100))),
//                                                   suffixIcon:
//                                                       _pwdController.text != ''
//                                                           ? GestureDetector(
//                                                               onTap: () =>
//                                                                   setState(() =>
//                                                                       pwdSwitch =
//                                                                           !pwdSwitch),
//                                                               child: Icon(
//                                                                   Icons
//                                                                       .remove_red_eye,
//                                                                   size:
//                                                                       duSetHeight(
//                                                                           20),
//                                                                   color: pwdSwitch
//                                                                       ? Colors
//                                                                           .blueAccent
//                                                                       : Colors
//                                                                           .blueGrey
//                                                                           .withOpacity(
//                                                                               .5)),
//                                                             )
//                                                           : SizedBox()),
//                                               obscureText: !pwdSwitch,
//                                             ),
//                                             SizedBox(height: duSetHeight(10)),
//                                             Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.end,
//                                                 children: <Widget>[
//                                                   Padding(
//                                                       padding:
//                                                           EdgeInsets.symmetric(
//                                                               horizontal: 10),
//                                                       child: RichText(
//                                                           textAlign:
//                                                               TextAlign.right,
//                                                           text: TextSpan(
//                                                               text:
//                                                                   "Forgot password? ",
//                                                               style: TextStyle(
//                                                                 fontSize: 15,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w500,
//                                                                 color: Colors
//                                                                     .blueAccent,
//                                                               ),
//                                                               recognizer:
//                                                                   TapGestureRecognizer()
//                                                                     ..onTap =
//                                                                         () async {
//                                                                       //NavUtil.push()
//                                                                     })))
//                                                 ]),
//                                             SizedBox(height: duSetHeight(20)),
//                                             Container(
//                                                 width: duSetWidth(150),
//                                                 height: 50,
//                                                 child: FlatButton(
//                                                   colorBrightness:
//                                                       Brightness.dark,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               25.0)),
//                                                   onPressed: () {},
//                                                   child: Text("Login",
//                                                       style: TextStyle(
//                                                           fontSize:
//                                                               duSetFontSize(15),
//                                                           fontWeight:
//                                                               FontWeight.w500,
//                                                           color: Colors.white)),
//                                                   color: Colors.blueAccent,
//                                                 )),
//                                             SizedBox(height: duSetHeight(20))
//                                           ]))
//                                 ])))
//                   ]),
//               Center(
//                   child: Padding(
//                       padding: EdgeInsets.only(top: duSetHeight(100)),
//                       child: Container(
//                           width: 100,
//                           height: 100,
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.white,
//                               boxShadow: <BoxShadow>[
//                                 BoxShadow(
//                                     color: Colors.grey.withOpacity(0.6),
//                                     offset: const Offset(2.0, 4.0),
//                                     blurRadius: 8.0)
//                               ]),
//                           child: ClipRRect(
//                               borderRadius: const BorderRadius.all(
//                                   (Radius.circular(75.0))),
//                               child: Image.asset('assets/daniel.jpg')))))
//             ]))));
//   }
// }

// double duSetWidth(double width) {
//   return ScreenUtil().setWidth(width);
// }

// double duSetHeight(double height) {
//   return ScreenUtil().setHeight(height);
// }

// double duSetFontSize(double fontSize) {
//   return ScreenUtil().setSp(fontSize);
// }

// class HexColor extends Color {
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 6) {
//       hexColor = 'FF' + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
// }