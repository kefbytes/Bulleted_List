//
//  ViewController.swift
//  Bulleted_List
//
//  Created by Franks, Kent on 9/28/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    let blurb1:NSMutableAttributedString = NSMutableAttributedString(string: "●\tFirst Bullet Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    
    let blurb2:NSMutableAttributedString = NSMutableAttributedString(string: "\n\n●\tSecond Bullet Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    
    let blurb3:NSMutableAttributedString = NSMutableAttributedString(string: "\n\n●\tThird Bullet Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    
    let blurb4:NSMutableAttributedString = NSMutableAttributedString(string: "\n\n●\tFourth Bullet Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, \n\n●\tsed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        blurb1.appendAttributedString(blurb2)
        blurb1.appendAttributedString(blurb3)
        blurb1.appendAttributedString(blurb4)
        
        let paragraphStyle:NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 27
        let myFont = UIFont(name: "AmericanTypewriter", size: 14.0)!
        
        blurb1.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, blurb1.length))
        blurb1.addAttribute(NSFontAttributeName, value: myFont, range: NSMakeRange(0, blurb1.length))
        myTextView.attributedText = blurb1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

