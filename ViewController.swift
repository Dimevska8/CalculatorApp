//
//  ViewController.swift
//  Calculator
//
//  Created by Darko Spasovski on 9/18/20.
//  Copyright © 2020 Code Academy. All rights reserved.
//

import UIKit
import AVFoundation

enum Operation: String {
    case add = "+"
    case substruct = "-"
    case multiply = "*"
    case devide = "/"
    case equal = "="
    case empty = " "
}

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplay: UILabel!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        preparePlayer()
    }
    
    func setupLabel() {
        lblDisplay.font = UIFont (name: "Minecraft" , size: 25)!
        lblDisplay.textColor = .black
    }
    
    func preparePlayer() {
        guard let url = Bundle.main.url(forResource: "btn", withExtension: "wav") else {return}
        do{
            player = try AVAudioPlayer(contentsOf: url)
           player?.prepareToPlay()
      } catch (let error) {
            print(error.localizedDescription)
        }
    }
    
         @IBAction func equal(_ sender: UIButton) {
        calculateOperation(operation: .equal)
    }
    
       @IBAction func onClick(_ sender: UIButton) {
            player?.play()
            
            let number = sender.tag
        lblDisplay.text = "\(number)"
    }
    
       @IBAction  func add(_ sender: UIButton) {
        calculateOperation(operation: .add)
    }
    
       @IBAction  func substruct(_ sender: UIButton) {
        calculateOperation(operation: .substruct)
    }
    
      @IBAction   func multiply(_ sender: UIButton) {
        calculateOperation(operation: .multiply)
        
    }
    
      @IBAction   func devide(_ sender: UIButton) {
        calculateOperation(operation: .devide)
    }
    
    func calculateOperation(operation: Operation) {
        
        switch operation {        
        case .add:
            break
        case .substruct:
            break
        case .multiply:
            break
        case .devide:
            break
        case .equal:
            break
        case .empty:
            break
        }
    }
}


