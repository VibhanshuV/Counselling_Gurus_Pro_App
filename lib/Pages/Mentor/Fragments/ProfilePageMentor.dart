//import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:counselling_gurus/Resources/Colors.dart' as color;
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageMentor extends StatefulWidget {
  @override
  _ProfilePageMentorState createState() => new _ProfilePageMentorState();
}

class _ProfilePageMentorState extends State<ProfilePageMentor> {

  String email, name, contact, branch, college,year,location,about;
  // JsonDecoder jsonDecoder = new JsonDecoder();
  // Map<String, dynamic> jsonData;
  // bool loader = false;

  getUserData() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    // email = prefs.getString('email');
    // if(prefs.getString('name') == null || prefs.getString('name').isEmpty ||
    //     prefs.getString('email') == null || prefs.getString('email').isEmpty ||
    //     prefs.getString('contact') == null || prefs.getString('contact').isEmpty){
    //
    //   Uri uri = Uri.parse('http://192.168.43.70:3060/getuserdataapp/$email');
    //   http.Response response = await http.get(uri, headers: {"Accept": "application/json"});
    //   print(response.body);
    //   if(response.statusCode == 200){
    //     setState(() {
    //       jsonData = jsonDecoder.convert(response.body);
    //       prefs.setString('name', name);
    //       prefs.setString('email', email);
    //       prefs.setString('contact', contact);
    //       setState(() {
    //         email = jsonData['email'];
    //         name = jsonData['name'];
    //         contact = jsonData['contact'];
    //         loader = false;
    //       });
    //     });
    //   }else{
    //     throw Exception('Failed to load data');
    //   }
    // }else{
      setState(() {
        name = prefs.getString('nameMent') ?? "update name!";
        email = prefs.getString('emailMent') ?? "email";
        contact = prefs.getString('contactMent') ?? "Please update contact!";
        branch = prefs.getString('branchMent') ?? "Please update branch!";
        college = prefs.getString('collegeMent') ?? "Please update college!";
        year = prefs.getString('yearMent') ?? "Please update year!";
        location = prefs.getString('locationMent') ?? "update location!";
        about = prefs.getString('aboutMent') ?? "Please update bio!";

        // loader = false;
      });
    // }
  }

  @override
  void initState() {
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return /*loader ? Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.orangeAccent,
      ),
    ):*/
    new Scaffold(
            body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 350,
            child: Stack(
              children: <Widget>[
                Container(
                    height: 320,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                          color.bgGrad,
                          color.bgGrad1,
                          color.bgGrad2,
                          color.bgGrad3
                        ]))),
                Positioned(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 3.2,
                  top: MediaQuery.of(context).size.height / 9,
                  left: MediaQuery.of(context).size.width / 11,
                  child: Material(
                    elevation: 30,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          ),
                          ListTile(
                            title:Center(
                              child: Text(name, style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            subtitle: Center(
                              child: Text(location,style: GoogleFonts.aBeeZee(fontSize: 15,fontWeight: FontWeight.w300),),
                            ),

                          ),
                            ListTile(
                              title: Center(
                                child: Text(
                                  about,
                                  style: GoogleFonts.aBeeZee(fontSize: 15,
                                      fontWeight: FontWeight.w300),),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 50, right: 50),

                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 3,
                      height: MediaQuery
                          .of(context)
                          .size
                          .width / 3,
                      top: MediaQuery
                          .of(context)
                          .size
                          .height / 36,
                      left: MediaQuery
                          .of(context)
                          .size
                          .width / 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/profile.png')),
                        ),
                      ),
                    )
                  ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Card(
                color: Color(0xFFFF4E00),
                elevation: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 50,right: 50),
                  leading: Icon(Icons.email,color: Colors.black,),
                  title: Text(email ,style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300,fontSize: 15),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Card(
                color: Color(0xFFFF4E00),
                elevation: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 50,right: 50),
                  leading: Icon(Icons.phone_android,color: Colors.black,),
                  title: Text(contact ,style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300,fontSize: 15),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Card(
                color: Color(0xFFFF4E00),
                elevation: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 50,right: 50),
                  leading: Icon(Icons.home,color: Colors.black,),
                  title: Text(college ,style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300,fontSize: 15),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Card(
                color: Color(0xFFFF4E00),
                elevation: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 50,right: 50),
                  leading: Icon(Icons.note_add,color: Colors.black,),
                  title: Text(branch ,style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300,fontSize: 15),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Card(
                color: Color(0xFFFF4E00),
                elevation: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 50,right: 50),
                  leading: Icon(Icons.edit_attributes,color: Colors.black,),
                  title: Text(year ,style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300,fontSize: 15),),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}/*Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange,Colors.white],
            )
          ),
          ),
          clipper: GetClipper(),
        ),
        Positioned(
            width: MediaQuery.of(context).size.width / 1,
            top: MediaQuery.of(context).size.height / 16,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                        gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.red,Colors.orange,Colors.orangeAccent,Colors.yellowAccent],
                        ),
                        image: DecorationImage(
                            image:
                                new AssetImage('assets/images/splashpic.png')),
                        /*image: DecorationImage(
                            image: NetworkImage(
                                'Any .jpg file URL'),
                            fit: BoxFit.cover),
                        */
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                       )),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'VarSVat',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'I Am A Student ',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'IIT-JEE Stream',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {})
                  ],
                ),
                Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '123456XXXX',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    )),
                Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Gender',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    )),
                Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'varun@xyz.com',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    )),
                SizedBox(height: 20.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red[800],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Log out',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    ));
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 50, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

//Trying Push
*/