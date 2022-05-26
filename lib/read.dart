import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:temp/main.dart';


class Lst extends StatefulWidget {
  @override
  _LstState createState() => _LstState();
}

class _LstState extends State<Lst> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Display Server Data "),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        key: _scaffoldKey,
        body: FutureBuilder<List<ParseObject>>(
            
            builder: (context, snapshot) {
               
               

                    return ListView.separated(
                      padding: EdgeInsets.only(top: 10.0),
                      itemCount: dem!.length,
                      itemBuilder: (context, index) {
                        final title = dem![index]["name"];
                        //final userVerified = user.a) ?? false;
                        return ListTile(
                          title: Text('Name: $title'),
                                                  );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    );
                  
              
            }));
  }

  
}
