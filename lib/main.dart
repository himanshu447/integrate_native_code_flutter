import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:integrate_native_code_flutter/android_call_from_flutter.dart';

void main() => runApp(MaterialApp(
      home: AndroidModuleCall(),
    ));

/**
 *
 * Rest Api call without rxjava
 *
 */
/*class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}*/

/*
class MyAppState extends State<MyApp> {
  final String url = "https://swapi.co/api/starships";
  List data;

  Future<String> getData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(res.body);
      data = resBody["results"];
    });

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is REST Api App"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
*/

