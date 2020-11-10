//
//  ViewController.swift
//  rock-paper-scissors-app
//
//  Created by Eduarda Mello on 03/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var cpuImage: UIImageView!
    
    @IBOutlet weak var meLabel: UILabel!
    @IBOutlet weak var meImage: UIImageView!
    
    var cpuScore = 0
    var meScore = 0
    
    @IBAction func startButton(_ sender: Any) {
        //generating numbers for both players
        let cpuNumber = Int.random(in: 1...3)
        let meNumber = Int.random(in: 1...3)
        
        //rock = 1, papper = 2, scissors = 3
        
        //setting the images according to the numbers
        setHandleImage(imageView: cpuImage, imageNumber: cpuNumber)
        setHandleImage(imageView: meImage, imageNumber: meNumber)
        
        //calculating the winner
        
        //cpu = rock, player = rock
        if cpuNumber == 1 && meNumber == 1 {
            print("draw")
        }
        //cpu = rock, player = paper
        if cpuNumber == 1 && meNumber == 2 {
            meScore = meScore + 1
        }
        //cpu = rock, player = scissors
        if cpuNumber == 1 && meNumber == 3 {
            cpuScore = cpuScore + 1
        }
        
        //cpu = paper, player = rock
        if cpuNumber == 2 && meNumber == 1 {
            cpuScore = cpuScore + 1
        }
        //cpu = paper, player = paper
        if cpuNumber == 2 && meNumber == 2 {
            print("draw")
        }
        //cpu = paper, player = scissors
        if cpuNumber == 2 && meNumber == 3 {
            meScore = meScore + 1
        }
        
        //cpu = scissors, player = rock
        if cpuNumber == 3 && meNumber == 1 {
            meScore = meScore + 1
        }
        //cpu = scissors, player = paper
        if cpuNumber == 3 && meNumber == 2 {
            cpuScore = cpuScore + 1
        }
        //cpu = scissors, player = scissors
        if cpuNumber == 3 && meNumber == 3 {
            print("draw")
        }
        
        //display the scores
        cpuLabel.text = "Computador: \(cpuScore)"
        meLabel.text = "Eu: \(meScore)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setHandleImage(imageView: UIImageView, imageNumber: Int) {
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "rock")
        case 2:
            imageView.image = UIImage(named: "paper")
        case 3:
            imageView.image = UIImage(named: "scissors")
        default:
            print("error")
        }
    }


}

