//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation


class ViewController: UIViewController {
  
    var audioPlayer: AVAudioPlayer!
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    //var selectedSoundFileName = ""


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        //print(sender.tag)
        
       // selectedSoundFileName = soundArray[sender.tag - 1]
        //print(selectedSoundFileName)
        
        
        
        playSound(soundFileName: soundArray[sender.tag - 1])
    }
    
    func playSound(soundFileName : String){
        
        //let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}











/*
 
developer manual override, dont catch errors. Bold statement/code will always work:
 
let soundURL = Bundle.main.url(forResource: "note3", withExtension: "wav") {
 try!  audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
 
 }
 
 
 -----------------------------------------
 ERROR CATCHING (designed to be a safe language?)
 
 -----------------------------------------
 ANOTHER WAY
 
 
 //         let url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
 //
 //        do {
 //            player = try AVAudioPlayer(contentsOf: url)
 //            guard let player = player else { return }
 //
 //            player.prepareToPlay()
 //            player.play()
 //
 //          } catch let error as Error {
 //            print(error)
 //        }
 
 -------------------------
 
 import AudioToolbox
 
 
 if let soundURL = Bundle.main.url(forResource: "note3", withExtension: "wav") {
 var mySound: SystemSoundID = 0
 AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
 AudioServicesPlaySystemSound(mySound);
 }
 
 */
