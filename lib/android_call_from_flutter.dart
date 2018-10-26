
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AndroidModuleCall extends StatelessWidget {
  static const platform = const MethodChannel('samples.flutter.io/battery');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'this is AndroidModules call',
        ),
        backgroundColor: Colors.amber,
      ),
      body: _buildData(context),
    );
  }

  Widget _buildData(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("click me"),
            onPressed: _showNativeViewes,
          ),
        ],
      ),
    );
  }

  Future<Null> _showNativeViewes() async {
    await platform.invokeMethod("showMe");
  }
}
