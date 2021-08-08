import 'package:flutter/material.dart';
import 'models/fetchData.dart';
import 'package:url_launcher/url_launcher.dart';


class LiveScreen extends StatefulWidget {
  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  Future data;

  void initState() {
    super.initState();
    data = getLive();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HoloVids")
      ),
      body: Container(
        child:
            FutureBuilder(
            future: getLive(),
              builder: (context, AsyncSnapshot snapshot){
                  if(snapshot.data== null){
                    return Container(
                        child: Center(
                            child: Text("Loading..."),
                        ),
                    );
                  }
                  else{
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i){
                          return InkWell(
                          onTap: () async{
                            dynamic url = "https://www.youtube.com/watch?v=" + snapshot.data["lives"][i]["room"];
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                              } else {
                              throw 'Could not launch $url';
                              }
                            },
                            child: ListTile(
                                leading: Image.network(snapshot.data["lives"][i]["cover"]),
                                title: Text(snapshot.data["lives"][i]["title"]),
                            ),
                          );
                        });
                  }
              }
            )
          
        )
      );
  }


  Future getLive() async {
  Fetch fetchData = Fetch("https://holo.dev/api/v1/lives/current");
  return fetchData.fetchData();
  }
}
