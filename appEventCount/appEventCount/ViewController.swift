//
//  ViewController.swift
//  appEventCount
//
//  Created by West Kraemer on 3/27/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var willResignActive: UILabel!
    @IBOutlet weak var didEnterBackground: UILabel!
    @IBOutlet weak var willEnterForeground: UILabel!
    @IBOutlet weak var didBecomeActive: UILabel!
    @IBOutlet weak var willTerminate: UILabel!
    
    
    var didFinishLaunchingCOUNT = 0
    var willResignActiveCOUNT = 0
    var didEnterBackgroundCOUNT = 0
    var willEnterForegroundCOUNT = 0
    var didBecomeActiveCOUNT = 0
    var willTerminateCOUNT = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        didFinishLaunching.text = "didFinishLaunchCount: \(didFinishLaunchingCOUNT)"
        willResignActive.text = "willResignActive: \(willResignActiveCOUNT)"
        didEnterBackground.text = "didEnterBackground: \(didEnterBackgroundCOUNT)"
        willEnterForeground.text = "willEnterForeground: \(willEnterForegroundCOUNT)"
        didBecomeActive.text = "didBecomeActive: \(didBecomeActiveCOUNT)"
        willTerminate.text = "willTerminate: \(willTerminate)"
    }


}

