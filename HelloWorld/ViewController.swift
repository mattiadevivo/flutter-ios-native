//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mattia De Vivo on 07/04/2020.
//  Copyright © 2020 Came Spa. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    // All the comments starting with MARK: indicate a special type of comment.
    // If you need to add properties or actions related to storyboard's components
    // you just need to right click on it and drag under the //MARK: comment.
    
    //MARK: Properties
    // Reference to the button
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // SEE ALSO AppDelegate.swift for other information about Flutter.
    
    //MARK: Actions
    @IBAction func goToFlutterApp(_ sender: UIButton) {
        // Here is what to do when the user clicks on the button.
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        // Change visualization mode to fullscreen because the default one is in card.
        flutterViewController.modalPresentationStyle = .fullScreen
        present(flutterViewController, animated: true, completion: nil)
    }
    

}

