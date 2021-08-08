import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
} 


class _DashboardScreenState extends State<DashboardScreen>{
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
                    "Dashboard",
                    style: TextStyle(fontSize: 30)
                  )
                )
              ),
              SizedBox(height: 50),
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                      "HoloNews",
                      style: TextStyle(fontSize: 20)
                    )
                  ),
                ],
              ),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/img/ayame.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.fitWidth
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Nakiri ayame is Live after 3 month of Hiatus",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  )
                                ),
                                Container(
                                padding: EdgeInsets.all(8),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue integer nisl sagittis. Felis, feugiat commodo pellentesque urna ullamcorper proin nec ut ipsum. Sit pellentesque aliquam eu lectus sagittis, urna, viverra. .")
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    )
                  ),
                )
              ),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/img/ayame.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.fitWidth
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Nakiri ayame is Live after 3 month of Hiatus",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  )
                                ),
                                Container(
                                padding: EdgeInsets.all(8),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue integer nisl sagittis. Felis, feugiat commodo pellentesque urna ullamcorper proin nec ut ipsum. Sit pellentesque aliquam eu lectus sagittis, urna, viverra. .")
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    )
                  ),
                )
              ),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/img/ayame.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.fitWidth
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Nakiri ayame is Live after 3 month of Hiatus",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  )
                                ),
                                Container(
                                padding: EdgeInsets.all(8),
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue integer nisl sagittis. Felis, feugiat commodo pellentesque urna ullamcorper proin nec ut ipsum. Sit pellentesque aliquam eu lectus sagittis, urna, viverra. .")
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    )
                  ),
                )
              ),
            ]
          )
        )
      )
    );
  } 
}
