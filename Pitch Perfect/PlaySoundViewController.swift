//
//  PlaySoundViewController.swift
//  Pitch Perfect
//
//  Created by Tin Van on 4/4/15.
//  Copyright (c) 2015 Tin Van. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //NSBundle.mainBundle() returns path for main directory of project
        //path for resource gets path where resource is located
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType:"mp3")
//        {
//            
//            var fileURL = NSURL.fileURLWithPath(filePath)
//             audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
//             audioPlayer.enableRate = true
//        }
//        else
//        {
//            
//        println("You might've mistyped something")
//        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathURL, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
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
