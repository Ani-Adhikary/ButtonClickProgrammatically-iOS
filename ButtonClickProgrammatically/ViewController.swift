//
//  ViewController.swift
//  ButtonClickProgrammatically
//
//  Created by Ani Adhikary on 26/05/18.
//  Copyright © 2018 TheTechStory. All rights reserved.
//
// https://stackoverflow.com/questions/39815352/stuck-with-adding-target-to-button-in-swift-3-programmatically?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.addTarget(self, action: #selector(button1Clicked(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(button2Clicked), for: .allTouchEvents)
        
        //Adding a Button Programmatically 
        let button = UIButton(frame: CGRect(x: 140, y: 500, width: 100, height: 40))
        button.backgroundColor = .black
        button.setTitle("Button3", for: .normal)
        button.tag = 11
        button.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    @objc func button1Clicked(_ button: UIButton) {
        print("Button with tag: \(button.tag) clicked!")
    }
    
    @objc func button2Clicked() {
        print("Button2 clicked!")
    }
    
    @objc func pressButton(_ button: UIButton) {
        print("Button with tag: \(button.tag) clicked!")
    }

}

