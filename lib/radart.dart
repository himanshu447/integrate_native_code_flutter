import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

/**
 *
 * Api call with rxJAva
 *
 */

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final String url = "https://swapi.co/api/starships";
  List data;

  Future<List> getData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    var resBody = json.decode(res.body);
    data = resBody["results"];

    return data;
  }

  @override
  void initState() {
    super.initState();
    // this.getData();

    var obseablesf = new Observable.fromFuture(getData());
    obseablesf.listen(onData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is REST Api App"),
        backgroundColor: Colors.amberAccent,
      ),
      body: _buildData(context),
    );
  }

  void onData(List data1) {
    debugPrint("final data is $data1");

    setState(() {
      data = data1;
    });
  }

  Widget _buildData(BuildContext context) {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'name : - ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            data[index]["name"],
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black54),
                          ),
                        ],
                      )),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      data[index]["model"],
                      style: TextStyle(fontSize: 18.0, color: Colors.black54),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
