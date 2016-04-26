//
//  AboutMeViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import Spring
class AboutMeViewController: UIViewController {

    var text = ["Name","Age","Favorite Color", "Favorite Sports Team", "Favorite Language"]
    var answers = ["Vibhu Gandikota", "14", "Orange", "Green Bay Packers", "Swift!!"]
    
    override func viewDidAppear(animated: Bool) {
        // Do any additional setup after loading the view.
        
        
        setupHomeButton()
        
        setupScene()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupScene(){
      var Label1 = SpringLabel()
        
        Label1.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 300, 275)
        Label1.center = CGPointMake(CGRectGetMinX(self.view.frame) + 65, CGRectGetMinY(self.view.frame) + 100 )
        Label1.backgroundColor = UIColor.clearColor()
        Label1.textColor = UIColor.blackColor()
        Label1.font = UIFont(name: "Avenir Next", size: 25)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "Name:"
        self.view.addSubview(Label1)
       
        var Label1p = SpringLabel()
        
        Label1p.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 300, 275)
        Label1p.center = CGPointMake(CGRectGetMaxX(self.view.frame) - 65, CGRectGetMinY(self.view.frame) + 100 )
        Label1p.backgroundColor = UIColor.clearColor()
        Label1p.textColor = UIColor.blackColor()
        Label1p.font = UIFont(name: "Avenir Next", size: 23)
        Label1p.textAlignment = NSTextAlignment.Center
        Label1p.text = "Vibhu Gandikota"
        self.view.addSubview(Label1p)
        
        
        
        
        
        
        
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */

    
    
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
        
        performSegueWithIdentifier("backToHomeAA", sender: self)
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
