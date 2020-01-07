//
//  ViewController.swift
//  Wish list
//
//  Created by Igor Mikhalev on 19.12.2019.
//  Copyright © 2019 Parakluence. All rights reserved.
//

import UIKit
import AVKit
import Parse

class ViewController: UIViewController {
    
    var videoPlayer:AVPlayer?
    
    var videoPlayerLayer:AVPlayerLayer?

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let testObject = PFObject(className: "Testing")
//        testObject["foo"] = "bar"
//        testObject.saveInBackground { (success, error) in
//            print("object has been saved")
//        }
        
        
        setUpElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Set up video in the background
        setUpVideo()
    }
    
    func setUpElements(){
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)

    }
    
    func setUpVideo() {
        
        //Get the path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: "im", ofType: "mp4")
        
        guard bundlePath != nil else {
            return
        }
        
        //Create a URL from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        //Create the video player item
        let item = AVPlayerItem(url: url)
        
        //Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        //Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        //Adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x: 0, y: -30, width: self.view.frame.size.width*2, height: self.view.frame.size.height)
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        
        //Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)
    }
    
    @IBAction func signUpTapped(_ sender: Any) {}
    @IBAction func loginTapped(_ sender: Any) {}



}

