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
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var drowDown: UIPickerView!
 
    
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    
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
    do
    {
    let audioPath = Bundle.main.path(forResource: "song" , ofType : "mp3")
    try player = AVAudioPlayer(contentOf: NSURL(fileURLWithPath: audioPath!) as URL)
    
    }
    catch
    {
        //ERROR
    }
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   }

