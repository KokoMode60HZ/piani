///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';


class Register extends StatelessWidget {
   const Register({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xffffffff),
appBar: 
AppBar(
elevation:0,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:const Color(0xffffffff),
shape:const RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
leading: IconButton(
  icon: const Icon(
    Icons.arrow_back,
    color: Color(0xff212435),
    size: 24,
  ),
  onPressed: () {
    Navigator.pop(context);
  },
),
),
body:Padding(
padding:const EdgeInsets.all(16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
const Image(
image:AssetImage("assets/images/download-removebg-preview.png"),
height:100,
width:100,
fit:BoxFit.cover,
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:Text(
"Let's Get Started!",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xffffa800),
),
),
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:Text(
"Create an account and start creating.",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
Padding(
padding:const EdgeInsets.fromLTRB(0, 40, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffff8f00),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff8700),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff8700),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff8700),
width:1
),
),
hintText:"Name",
hintStyle:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:const Color(0xffffffff),
isDense:false,
contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:const Icon(Icons.person,color:Color(0xff212435),size:24),
),
),
),
Padding(
padding:const EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
hintText:"Email Address",
hintStyle:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:const Color(0xffffffff),
isDense:false,
contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:const Icon(Icons.mail,color:Color(0xff212435),size:24),
),
),
),
Padding(
padding:const EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
hintText:"Password",
hintStyle:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:const Color(0xffffffff),
isDense:false,
contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:const Icon(Icons.visibility,color:Color(0xff212435),size:24),
),
),
),
Padding(
padding:const EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(8.0),
borderSide:const BorderSide(
color:Color(0xffff9800),
width:1
),
),
hintText:"Confirm Password",
hintStyle:const TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:const Color(0xffffffff),
isDense:false,
contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:const Icon(Icons.visibility,color:Color(0xff212435),size:24),
),
),
),
Padding(
padding:const EdgeInsets.fromLTRB(0, 16, 0, 0),
child:MaterialButton(
onPressed:(){
   Navigator.pushNamed(context,'/login');
},
color:const Color(0xffff9800),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(8.0),
),
padding:const EdgeInsets.all(16),
textColor:const Color(0xffffffff),
height:45,
minWidth:MediaQuery.of(context).size.width,
child:Text("Sign Up", style: TextStyle( fontSize:16,
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
),),
),
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
child:Text(
"By creating an account or continuing to use  a FlutterViz. you acknowledge and agree that you have accepted the Terms of  Services and  have reviewed the Privacy Policy.",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:12,
color:Color(0xff807d7d),
),
),
),
const Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Text(
"Already have an account?",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(8, 0, 0, 0),
child:Text(
"Sign In",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffff9800),
),
),
),
],),),
],),),),
)
;}
}