import 'dart:math';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/HomePageSources/BranchblogMentor.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/StartingPages/ChangePassword.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/HomePageSources/CollegeblogMentor.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/SideNav/ContactUsMentor.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/HomePageSources/FAQMentor.dart';
import 'package:counselling_gurus/Pages/Student/Fragments/News.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/BranchName.dart';
//import 'package:counselling_gurus/Pages/Student/HomePageSources/BranchblogMentor.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/CollegePredictor.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/Collegeblog.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/CompleteNews.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/FAQ.dart';
import 'package:counselling_gurus/Pages/Student/HomePageSources/RankPredictor.dart';
import 'package:counselling_gurus/Pages/Student/Medical/MedicalBranchName.dart';
//import 'package:counselling_gurus/Pages/Student/Medical/MedicalBranchblogMentor.dart';
import 'package:counselling_gurus/Pages/Student/Medical/MedicalCollegeBlog.dart';
import 'package:counselling_gurus/Pages/Student/Medical/MedicalCollegePredictor.dart';
import 'package:counselling_gurus/Pages/Student/Medical/MedicalRankPredictor.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/HomePageSources/RankPredictorMentor.dart';
//import 'package:counselling_gurus/Pages/Student/ScheduleMeetingMentor.dart';
//import 'package:counselling_gurus/Pages/Student/SideNav/ContactUsMentor.dart';
//import 'package:counselling_gurus/Pages/Student/SideNav/EditProfileMentor.dart';
//import 'package:counselling_gurus/Pages/Student/SideNav/TermsAndConditionsMentor.dart';
//import 'package:counselling_gurus/Pages/Student/SideNav/TopMentorsMentor.dart';
//import 'package:counselling_gurus/Pages/Student/SideNav/feedbackMentor.dart';
//import 'package:counselling_gurus/Pages/Student/StartingPages/ChangePassword.dart';
import 'package:counselling_gurus/Pages/Student/StartingPages/Stream.dart';
//import 'file:///C:/Users/Ralex/Desktop/Counselling_Gurus/lib/Pages/Student/SideNav/TermsAndConditionsMentor.dart';
//import 'package:counselling_gurus/components/oval_right_clipper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import '../../../Resources/Colors.dart' as color;
import '../UploadFile.dart';

final string = [
  'assets/images/background.png',
  'assets/images/background2.png'
];
double width;
int _timerCounter = 0;
Set<int> a= {};
Set<int> b= {};
ScrollController controller = ScrollController(initialScrollOffset: 0);
List<Color> colorList = [
  color.yellow,
  color.orange,
  color.orange10,
  color.orange3,
  color.dark2,
  color.pink4,
  color.purple,
  color.dark6
];

List<Color> background1 = [Colors.indigoAccent,Colors.deepOrangeAccent,Colors.greenAccent,Colors.deepPurpleAccent,Colors.blueAccent,Colors.red,Colors.brown,Colors.black,Colors.blueGrey];
List<Color> background=[Colors.lightBlueAccent,Colors.orangeAccent,Colors.lightGreenAccent,Colors.purpleAccent,Colors.greenAccent,Colors.pinkAccent,Colors.amberAccent,Colors.grey,Colors.blueAccent];
List<String> cardHeadings = [
  "College Predictor",
  "Get your Rank",
  "Colleges",
  "Branches",
  "Frequently Asked Questions",
  "Document Verification",
];
//   "Mock Counselling",
//  "Aptitude Test",
// "Document Verification",

List<String> buttonHeadings = [
  "Get Your College",
  "Get Your Rank",
  "Know About Your College",
  "Explore Branches",
  "Know More",
  "Verify",
];

//   "Experience Counselling",
//  "Take the Test",
//  "Verify Documents"

List<IconData> icon = [
  Icons.school,
  Icons.score,
  Icons.home,
  Icons.library_books,
  Icons.question_answer,
  Icons.receipt
];
//   Icons.note_add,
//   Icons.supervisor_account,
//  Icons.edit,
final Color primary = Colors.white;
final Color active = Colors.grey.shade800;
final Color divider = Colors.grey.shade600;

final paragraph =
["Predict and know the best colleges you can get at your rank.Results are based on previous years' data, student preferences,NIRF rankings and other parameters like placements,college infrastructure and other facilities.",
  "Get your rank calculated based on your percentile with utmost accuracy.These ranks are calculated with the help of complex formula similar to the one used by NTA to calculate AIRs and category ranks of lakhs of students.",
  "Get quick access to desired information about thousands of colleges across India.Different facts provided about various factors like placements, campus size,student strength,routes and distances are authentic and verified.",
  "Get each and every detail about every engineering branch that intrigues you.We have a collection of 50+ branches that are offered in colleges across India.",
  "Tired of googling every single small question that comes to your mind? Then you are at a right place! Get answers to all the common(and uncommon :p)questions asked by aspirants and also get it answered if you have one!",
  " Afraid and confused about the actual counselling process? Don't worry! We provide full document verification before the actual Counselling process so that lack of documents doesn't stop you from getting your dream college or branch",
  "Don't know if you are still prepared for the upcoming exams. Relax our mentors have specially design handwritten notes to help you with last minute revision and get an extra edge over others.",
  "Wait Wait Wait! Don't just scroll over this we have examined over thousand brains combined with our experience found the top mistakes which student commit during the counselling procedure. Do have a look at this.",
  "Still have some unanswered queries? We hope not but our mentors are there to help you further post whatever query you have and we will try to help as soon as possible",
  "Not satisfied with what all you have already. Get detailed past year counselling analysis, where you stand after each counselling round and possibilities of improving in further upcoming rounds",
  "Afraid of missing out on important deadlines. Don't worry we manage it all here. Have a look at a personalised timeline designed just for you with all important details to help in the counselling procedure"];
      // Afraid and confused about the actual counselling process? Don't worry! We will get all your problems sorted with this one of its kind 'Mock Counselling'.You will be guided about everything that is important for JoSAA and NEET counselling,from choice filling to locking, freezing and floating,you will understand them all at once!
      // Not able to concentrate on studies?
      // Not able to sit for long study hours?
      // Now not a reason to worry! Get your personality test done!From your mental acumen to physical ability,We will examine everything about you and suggest some steps to improve without any help from others!

      // final backparagraph = []

Timer _timer;
News news = News("Trending news heading","Here we will displaying few lines about our trending news.","","assets/images/background.png");

void _incrementTimerCounter(Timer t) {
  _timerCounter++;
  if (_timerCounter == 6) _timerCounter = 0;
  // if (controller.hasClients) controller.jumpTo(_timerCounter.toDouble() * 410);
  if (controller.hasClients)
    controller.animateTo(_timerCounter.toDouble() * width,
        duration: Duration(milliseconds: 1000), curve: Curves.easeOut);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  List<GlobalKey<ScaffoldState>> keys = new List(5);

  //final GlobalKey<ScaffoldState> _containerkey = GlobalKey<ScaffoldState>();
  @override
  void initState(){
    super.initState();
    for(int i=0;i<5;i++)
    {
        keys[i]= new GlobalKey<ScaffoldState>();
    }
  }
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _timerCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    a.clear();
    b.clear();
    return Scaffold(
      key: _key,
     // drawer: buildDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: trendingNews(),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return gridCard(index);
            }, childCount: 6),
          )
        ],
      ),
    );
  }

/*  buildDrawer(){
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/app_logo.png"),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "erika costell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@erika07",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.schedule, "Schedule Meeting",1),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Edit profile",2),
                  _buildDivider(),
                  _buildRow(Icons.message, "Feedback",3, showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Change Password",4,
                      showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.person, "Mentor",5),
                  _buildDivider(),
                  _buildRow(Icons.email,"Contact us",6),
                  _buildDivider(),
                  _buildRow(Icons.info_outline,"Terms and Conditions",7),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title,int index, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return GestureDetector(
      onTap: (){
        if(index==1)
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleMeeting()));
        else if(index==2)
        Navigator.push(context,MaterialPageRoute(builder: (context)=>EditProfile()));
        else if(index==3)
          Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));
        else if(index==4)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword()));
        else if(index==5)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>TopMentors()));
        else if(index==6)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>ContactUs()));
        else if(index==7)
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndConditions()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(children: [
          Icon(
            icon,
            color: active,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: tStyle,
          ),
        ]),
      ),
    );
  }
*/
  Widget trendingNews() {

    if(_timer!=null)
      _timer.cancel();
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    //final double itemHeight = ((size.height - kToolbarHeight - 24) / 2) - 20;
    //final double itemWidth = size.width / 2;
    width = size.width;
    _timer = new Timer.periodic(
        new Duration(milliseconds: 5000), _incrementTimerCounter);
    return Container(
        color: Colors.transparent,
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: controller,
          itemCount: 6,
          itemBuilder: (context, index) {
            int random;
            random = Random().nextInt(8);
            if(b.contains(random)&&b.length<=8)
            {
              while(b.contains(random))
              {
                random=Random().nextInt(8);
              }
            }
            b.add(random);
            return Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 120,
                color: Colors.transparent,
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: colorList[random]),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 20,
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(news.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          Expanded(
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  news.heading + index.toString(),
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                subtitle: Text(
                                  news.subheading,
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 12, color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CompleteNews(news)));
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                ));
          },
        ));
  }

  Widget gridCard(index) {
    int random;
    random = Random().nextInt(8);
    if(a.contains(random)&&a.length<=8)
    {
      while(a.contains(random))
      {
        random=Random().nextInt(8);
      }
    }
    a.add(random);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: FlipCard(
            direction: FlipDirection.VERTICAL,
            front: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //side: BorderSide(width: 1, color: Colors.black),
              ),
              color: background[random],
              elevation: 10,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CustomClipperPath(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      //  height: keys[index].currentContext.size.height,
                    //  height: 220+paragraph[index%2].length/55*13*410.5/MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: background1[random],
                      ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          icon[index],
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Center(
                            child: Text(
                              cardHeadings[index],
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          subtitle: Text(
                            paragraph[index],
                            //'Here we will put some lines of predefined text',
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                  //  height: 220+paragraph[index%2].length/55*13*410.5/MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                    ),
                    //color: colorList[random]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          icon[index],
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Center(
                            child: Text(
                              cardHeadings[index],
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          subtitle: Text(
                            paragraph[index],
                            //'Here we will put some lines of predefined text',
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
            back: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //side: BorderSide(width: 1, color: Colors.black),
              ),
              color: background[random],
              elevation: 10,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CustomClipperPath(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                   //   height: keys[index].currentContext.size.height,
                    //  height: 220+paragraph[index%2].length/55*13*410.5/MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: background1[random],
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            icon[index],
                            size: 40,
                            color: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            title: Center(
                              child: Text(
                                cardHeadings[index],
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.transparent),
                              ),
                            ),
                            subtitle: Text(
                              paragraph[index],
                              //'Here we will put some lines of predefined text',
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.transparent),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                    ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                   // height: keys[index].currentContext.size.height,
                    //height: 220+paragraph[index%2].length/55*13*410.5/MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color:Colors.transparent,
                    ),
                    //color: colorList[Random().nextInt(8)]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "More Details",
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        ListTile(
                          title: Center(
                            child: RaisedButton(
                              //elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.white,
                                child: Text(
                                  buttonHeadings[index],
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                onPressed: () {
                               //   print(keys[index].currentContext.size.height.toString());
                                  if (index == 0)
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            (GetStream()==0?CollegePredictor():MedicalCollegePredictor())));
                                  else if (index == 2)
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => (GetStream()==0)?Collegeblog():MedicalCollegeblog()));
                                  else if (index == 3)
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => (GetStream()==0?BranchName():MedicalBranchName())));
                                  else if (index==5)
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadFile()));
                                  else if (index==4)
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQ()));
                                  else if (index == 1)
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => (GetStream()==0?RankPredictor():MedicalRankPredictor())));
                                }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],),
            )));
  }
}

class CustomClipperPath extends CustomClipper<Path>{

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0,0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width/2, size.height, size.width/2, 0);
    path.close();
    return path;
  }
}

