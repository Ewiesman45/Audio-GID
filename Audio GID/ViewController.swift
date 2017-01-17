//
//  ViewController.swift
//  Audio GID
//
//  Created by Evan Wiesman on 1/10/17.
//  Copyright © 2017 Olivia Menconi and Evan Wiesman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    
    @IBAction func play(_ sender: AnyObject)
    {
        player.play()
    }
    
    @IBAction func pause(_ sender: AnyObject)
    {
        player.pause()
    }
    
    @IBAction func replay(_ sender: AnyObject)
    
    {
        player.currentTime = 0
    }
       override func viewDidLoad()
       {
        super.viewDidLoad()

    do
    {
    let audioPath = Bundle.main.path(forResource: "song" , ofType : "mp3")
        try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        //(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
    }
    catch
    {
    //ERROR
    }

    
    }
}
