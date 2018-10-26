package com.example.integratenativecodeflutter

import android.app.Activity
import android.os.Bundle
import android.widget.Toast
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class NativeViewActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        Toast.makeText(this,"thisi is toast",Toast.LENGTH_SHORT).show()
    }
}