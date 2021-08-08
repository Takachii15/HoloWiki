import 'package:flutter/material.dart';
import 'models/fetchData.dart';


class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  Future data;

  void initState() {
    super.initState();
    data = getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HoloMember")
      ),
      body: Container(
        child:
            FutureBuilder(
            future: getData(),
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
                          return ListTile(
                              leading: Image.network(snapshot.data[i]["avatar"]),
                              title: Text(snapshot.data[i]["name"]),
                          );
                        });
                  }
              }
            )
          
        )
      );
  }


  Future getData() async {
  Fetch fetchData = Fetch("https://holo.dev/api/v1/members");
  return fetchData.fetchData();
  }
}
