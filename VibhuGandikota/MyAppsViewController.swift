//
//  MyAppsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class MyAppsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var images = ["fi.png", "ffi.png", "bpi.png", "mni.png", "cysi.png", "csi.png"]

    var imagesss = [UIImage]()
    
    var appNames = ["Fexplosion","Flappy Friends","Bubble Poppers","Math Now","Can You Spell?","Color Swipes"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        
        setupScene()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.rowHeight = 150
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScene(){
             
        
        
        
        
        
        
    }
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //@IBOutlet weak var imageView: UIImageView!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! interestsTableViewCell
        
        //cell.textLabel?.text = swiftBlogs[row]
        
        cell.imageViewW.image = UIImage (named: images[indexPath.row])


        
        cell.AppName.text = appNames[indexPath.row]
        cell.appCreater.text = "Vibhu Gandikota"
        
        return cell
        
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        // print(swiftBlogs[row])
        //ADD URL TO APP STORE
        /*var sites = ["https://scratch.mit.edu/","https://www.ruby-lang.org/en/","http://www.oracle.com/technetwork/topics/newtojava/overview/index.html","http://www.apple.com/swift/"]
        
        if let url = NSURL(string: sites[indexPath.row] ){
            UIApplication.sharedApplication().openURL(url)
      }
 
 */
 
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
