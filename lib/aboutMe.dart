import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
} 


class _AboutMeState extends State<AboutMe>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/img/Hololive_Logo.png", height: 72)
                ]
              ),
              SizedBox(height: 5),
              Container(
                child: Center(
                    child: Text(
                    "About Us",
                    style: TextStyle(fontSize: 30)
                  )
                )
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(10.0),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img/kiryu-kai.png'),
                    fit: BoxFit.fill,
                  )
                )
              ),
            SizedBox(height: 5.0),
            Text(
                "Takachii", 
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)
              ),
            SizedBox(height: 8.0),
            Text(
                "Daffa.hp.dh@gmail.com", 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, decoration: TextDecoration.underline)
              ),
            SizedBox(height: 30),
            Container(
                height: 130,
                width: 400,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0, left: 15.0),
                      child: Text(
                        "Portofolio",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            "assets/img/portofolio/flutter.png",
                            height: 43,
                            width: 36.64,
                            fit: BoxFit.fitWidth
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            "assets/img/portofolio/react.png",
                            height: 50,
                            width: 54,
                            fit: BoxFit.fitWidth
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            "assets/img/portofolio/kotlin.png",
                            height: 45,
                            width: 40,
                            fit: BoxFit.fitWidth
                          ),
                        ),
                      ]
                    ),
                  ]
                )
              ),
            SizedBox(height: 30),
            Container(
                height: 130,
                width: 400,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0, left: 15.0),
                      child: Text(
                        "Contact",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                        onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/contact/linkedin.png",
                              height: 35,
                              width: 35,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                        InkWell(
                        onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/contact/tele.png",
                              height: 35,
                              width: 35,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                        InkWell(
                        onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/contact/gmail.png",
                              height: 27,
                              width: 30,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                      ]
                    ),
                  ]
                )
              ),
            SizedBox(height: 30),
            Container(
                height: 130,
                width: 400,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0, left: 15.0),
                      child: Text(
                        "Favorite Vtuber",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async{
                            const url = 'https://www.youtube.com/channel/UC7fk0CB07ly8oSl0aqKkqFg';
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                              } else {
                              throw 'Could not launch $url';
                              }
                            },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/fav/Nakiri_Ayame.png",
                              height: 65,
                              width: 65,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async{
                            const url = 'https://www.youtube.com/channel/UCqm3BQLlJfvkTsX_hvm0UmA';
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                              } else {
                              throw 'Could not launch $url';
                              }
                            },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/fav/TsunomakiWatame.jpg",
                              height: 65,
                              width: 65,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async{
                            const url = 'https://www.youtube.com/channel/UCYz_5n-uDuChHtLo7My1HnQ';
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                              } else {
                              throw 'Could not launch $url';
                              }
                            },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset(
                              "assets/img/fav/Kureiji_Ollie.png",
                              height: 65,
                              width: 65,
                              fit: BoxFit.fitWidth
                            ),
                          ),
                        ),
                      ]
                    ),
                  ]
                )
              ),
              SizedBox(height: 30)
            ]
          )
        )
      )
    );
  } 
}
