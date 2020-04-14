//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by Mattia De Vivo on 07/04/2020.
//  Copyright © 2020 Came Spa. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant // Used to connect plugins.

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")


    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Runs the default Dart entrypoint with a default Flutter route(main() function inside lib/main.dart).
        flutterEngine.run();
        
        // We can change the initial Route by using
        // flutterEngine.navigationChannel.invokeMethod("setInitialRoute", arguments:"/onboarding")
        // After that FlutterEngine is already running we can use pushRoute() and popRoute() on the FlutterViewController.
        
        // We can also use a different entrypoint by using runWithEntryPoint.
        // flutterEngine.run(withEntrypoint: "myOtherEntrypoint", libraryURI: "other_file.dart")
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }

}

