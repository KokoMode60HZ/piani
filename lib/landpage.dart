///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class LandPage extends StatefulWidget {
  const LandPage({super.key});

  @override
  _LandPageState createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xffffffff),
body:SizedBox(
height:MediaQuery.of(context).size.height,
width:MediaQuery.of(context).size.width,
child:
Stack(
alignment:Alignment.topLeft,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:const NetworkImage("data:image/jpeg;base64,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"),
height:MediaQuery.of(context).size.height,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Align(
alignment:Alignment.center,
child:Container(
margin:const EdgeInsets.all(0),
padding:const EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:MediaQuery.of(context).size.height,
decoration: BoxDecoration(
color:const Color(0xc9281100),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:const Color(0x4d9e9e9e),width:1),
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Container(
height:200,
width:200,
clipBehavior: Clip.antiAlias,
decoration: const BoxDecoration(
shape: BoxShape.circle,
),
child:Image.asset(
 "images/download-removebg-preview.png",
fit:BoxFit.cover),
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:Text(
"PIANI.",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xffff9400),
),
),
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 140, 0, 0),
child:Align(
alignment:Alignment(0.1, 0.0),
child:Text(
"© 2024 [Nama Anda/Perusahaan]. Semua hak dilindungi",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:10,
color:Color(0xff000000),
),
),
),
),
],),
),),
],),),
)
;}
}