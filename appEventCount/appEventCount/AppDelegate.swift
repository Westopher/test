//
//  AppDelegate.swift
//  appEventCount
//
//  Created by West Kraemer on 3/27/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?

//this
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        viewController = window?.rootViewController as? ViewController
        viewController?.didFinishLaunchingCOUNT += 1
        print("did finish launching")
        return true
    }
//this
    func applicationWillResignActive(_ application: UIApplication) {
        viewController = window?.rootViewController as? ViewController
        viewController?.willResignActiveCOUNT += 1
        print("will resign active")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        viewController = window?.rootViewController as? ViewController
        viewController?.didEnterBackgroundCOUNT += 1
        print("did enter background")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        viewController = window?.rootViewController as? ViewController
        viewController?.willEnterForegroundCOUNT += 1
        print("will enter foreground")
    }
//and this are the ones you want to focus on at the now
    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController = window?.rootViewController as? ViewController
        viewController?.didBecomeActiveCOUNT += 1
        print("did becomes active")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        viewController = window?.rootViewController as? ViewController
        viewController?.willTerminateCOUNT += 1
        print("will terminate")
    }


}

