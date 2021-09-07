//
//  ViewController.swift
//  Native_iOS_App
//
//  Created by Ibrahim on 02/09/21.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ReactNativeAppButtonTapped(sender : UIButton) {
        //let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        let data:NSDictionary = [:]; //We can use this parameter to pass the data to the React native App from the Native App.
        
        let rootView = RCTRootView(
            bundleURL: jsBundleLocation!,
            moduleName: "Bakesale",
            initialProperties: data as [NSObject : AnyObject],
            launchOptions: nil
        )
        let viewController = UIViewController()
        viewController.view = rootView
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

