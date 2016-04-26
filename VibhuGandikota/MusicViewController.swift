//
//  MusicViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import ImageSlideshow
class MusicViewController: UIViewController {
    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        
        setupScene()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScene(){

        //var imagee : UIImage = UIImage(named:"MusicYOCJ.png")!
        //var imageeee : UIImage = UIImage(named:"MusicYOCJ.png")!

        //var logoImages = [imagee, imageeee]
        
        
        
        
        let image = ImageSlideshow(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 500, 250))
        let SlideText = UITextView()
        SlideText.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 320, 320)
        SlideText.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 230 )
        let musicExcerpt = "My craving to play music provoked me to attempt to learn an instrument at a very young age. I decided to go into percussion. At the time, I didn't really know I was going to be learning percussion, instead I thought that I would be able to make music by attacking different drums with a stick."
        
        
        let text2 = "As I entered the 6th grade, I joined a group of musicians known as the Youth Orchestra of Central Jersey (YOCJ). In this group, I met many new people, and joined a new class in order to better advance my skills as not only a drummer, but a full percussionist."
       
        let text4 = " I also learned how to play Tabla, which is an indian drum. I always envied the way tabla sounded, and so I decided to start learning tabla along with my other percussion instruments. "
        
        let text5 = "This is where I am today. Music is a part of my life, because I have always enjoyed the experience of being able to play music. It truly is one of my favorite hobbies."
SlideText.editable = false
        SlideText.font = UIFont(name: "Avenir Next", size: 20)
        SlideText.text = musicExcerpt + "\n" + "\n" + text2 + "\n" + "\n" +  text4 + "\n" + "\n" + text5
        SlideText.textAlignment = NSTextAlignment.Justified
        self.view.addSubview(SlideText)
        //image.image = UIImage(named: "MusicYOCJ")
        image.setImageInputs([ImageSource(image: UIImage(named: "YOCJ")!), ImageSource(image: UIImage(named: "bandSetting")!),ImageSource(image: UIImage(named: "tabla")!)])
        image.sizeToFit()
        
        SlideText.alignmentRectForFrame(self.view.frame)
        image.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 120 )
        self.view.addSubview(image)
        image.alignmentRectForFrame(self.view.frame)
        
        SlideText.sendSubviewToBack(self.view)
        image.pageControlPosition = PageControlPosition.InsideScrollView
        //image.pageControl.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 160 )
        image.pageControl.currentPageIndicatorTintColor = UIColor.whiteColor();
        image.pageControl.pageIndicatorTintColor = UIColor.blackColor();
        
        
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
        
        homebuttonImage.bringSubviewToFront(self.view)
    }
    
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToHomeM", sender: self)
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
