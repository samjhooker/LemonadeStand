//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Samuel Hooker on 20/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOfIce:Int = 0
    var numberOfLemon:Int = 0
    var numberOfMoney:Int = 100
    var numberOfCups:Int = 0
    
    var titleContainer: UIView!
    var contentContainer1: UIView!
    var contentContainer2: UIView!
    var contentContainer3: UIView!
    var contentContainer4: UIView!
    var moneyContainer: UIView!
    var startContainer: UIView!
    
    var kEighth:CGFloat = 1.0/8.0
    var kHalf:CGFloat = 1.0/2.0
    var kThird:CGFloat = 1.0/3.0
    var kSeventh:CGFloat = 1.0/7.0
    
    var titleLabel:UILabel!
    var moneyLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setUpContainerViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func setUpContainerViews(){
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        self.titleContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x, y: self.view.bounds.origin.y, width: self.view.bounds.width, height: self.view.bounds.height * kEighth))
        self.titleContainer.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(self.titleContainer)
        setUpTitleContainer()
        
        self.contentContainer1 = UIView(frame: CGRect(x: self.view.bounds.origin.x + 5, y: self.titleContainer.frame.height + 5, width: self.view.bounds.width * kHalf - 7, height: self.view.bounds.height * 3 * kEighth))
        self.contentContainer1.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.contentContainer1)
        
        self.contentContainer2 = UIView(frame: CGRect(x: contentContainer1.frame.width + 10, y: self.titleContainer.frame.height + 5, width: self.view.bounds.width * kHalf - 7, height: self.view.bounds.height * 3 * kEighth))
        self.contentContainer2.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.contentContainer2)
        
        self.contentContainer3 = UIView(frame: CGRect(x: self.view.bounds.origin.x + 5, y: self.contentContainer1.frame.height + 10 + titleContainer.frame.height, width: self.view.bounds.width * kHalf - 7, height: self.view.bounds.height * 3 * kEighth))
        self.contentContainer3.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.contentContainer3)
        
        self.contentContainer4 = UIView(frame: CGRect(x: contentContainer1.frame.width + 10, y: self.contentContainer1.frame.height + 10 + titleContainer.frame.height, width: self.view.bounds.width * kHalf - 7, height: self.view.bounds.height * 3 * kEighth))
        self.contentContainer4.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.contentContainer4)
        
        self.moneyContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x, y: self.contentContainer1.frame.height + 15 + titleContainer.frame.height + contentContainer3.frame.height, width: self.view.bounds.width, height: self.view.bounds.height * kEighth))
        self.moneyContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(self.moneyContainer)
        setUpMoneyContainer()
        
    }
    
    
    func setUpTitleContainer(){
        titleLabel = UILabel()
        titleLabel.text = "Lemonade Stand"
        titleLabel.font = UIFont(name: "robato", size: 40)
        titleLabel.sizeToFit()
        titleLabel.center = titleContainer.center
        titleContainer.addSubview(titleLabel)
    }
    
    func setUpMoneyContainer(){
        
        moneyLabel = UILabel()
        moneyLabel.text = "hello"
        moneyLabel.textColor = UIColor.greenColor()
        moneyLabel.font = UIFont(name: "AmericanTypewriter", size: 30)
        moneyLabel.sizeToFit()
        moneyLabel.center = moneyContainer.center
        moneyContainer.addSubview(moneyLabel)
        print("testin")
    }


}

