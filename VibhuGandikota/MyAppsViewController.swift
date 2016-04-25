//
//  MyAppsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class MyAppsViewController: UIViewController {

  
    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        
        setupScene()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScene(){
        var image = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 600, 630))
        var SlideText = UITextView()
        SlideText.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 320, 300)
        SlideText.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) + 80.5 )
        SlideText.font = UIFont(name: "Avenir Next", size: 20)
        SlideText.text = "LOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSU  M LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOLLOREM IPSUM LOL"
        SlideText.textAlignment = NSTextAlignment.Justified
        self.view.addSubview(SlideText)
        image.image = UIImage(named: "MusicYOCJ")
        SlideText.alignmentRectForFrame(self.view.frame)
        image.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) - 168 )
        self.view.addSubview(image)
        image.alignmentRectForFrame(self.view.frame)
        
        
        
        
        
        
        
    }
    
    
    
    
    
    func setupHomeButton(){
        var homebuttonImage = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 650, 50))
        
        
        homebuttonImage.image = UIImage(named: "Home.png")
        self.view.addSubview(homebuttonImage)
        homebuttonImage.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        
        homeButton.frame = (frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60))
        homeButton.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        self.view.addSubview(homeButton)
        homeButton.addTarget(self, action: "homeButtonTouched", forControlEvents: .TouchUpInside)
        
        homebuttonImage.alignmentRectForFrame(self.view.frame)
        homeButton.alignmentRectForFrame(self.view.frame)
        
        
    }
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToHomeMM", sender: self)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
