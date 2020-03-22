//
//  ViewController.swift
//  HelloWorld
//
//  Created by Petter vang Brakalsvålet on 21/03/2020.
//  Copyright © 2020 Petter vang Brakalsvålet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aiScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    fileprivate func getCardScore(_ card: Int) -> Int{
        switch card {
        case 0..<4:
            return 2
        case 4..<8:
            return 3
        case 8..<12:
            return 4
        case 12..<16:
            return 5
        case 16..<20:
            return 6
        case 20..<24:
            return 7
        case 24..<28:
            return 8
        case 28..<32:
            return 9
        case 32..<36:
            return 10
        case 36..<40:
            return 11
        case 40..<44:
            return 12
        case 44..<48:
            return 13
        case 48..<52:
            return 1
        default:
            return 0
        }
    }
    
    @IBAction func deal(_ sender: Any) {
        let cards: [UIImage] = [
        UIImage(named: "2C.png")!,
        UIImage(named: "2D.png")!,
        UIImage(named: "2H.png")!,
        UIImage(named: "2S.png")!,
        UIImage(named: "3C.png")!,
        UIImage(named: "3D.png")!,
        UIImage(named: "3H.png")!,
        UIImage(named: "3S.png")!,
        UIImage(named: "4C.png")!,
        UIImage(named: "4D.png")!,
        UIImage(named: "4H.png")!,
        UIImage(named: "4S.png")!,
        UIImage(named: "5C.png")!,
        UIImage(named: "5D.png")!,
        UIImage(named: "5H.png")!,
        UIImage(named: "5S.png")!,
        UIImage(named: "6C.png")!,
        UIImage(named: "6D.png")!,
        UIImage(named: "6H.png")!,
        UIImage(named: "6S.png")!,
        UIImage(named: "7C.png")!,
        UIImage(named: "7D.png")!,
        UIImage(named: "7H.png")!,
        UIImage(named: "7S.png")!,
        UIImage(named: "8C.png")!,
        UIImage(named: "8D.png")!,
        UIImage(named: "8H.png")!,
        UIImage(named: "8S.png")!,
        UIImage(named: "9C.png")!,
        UIImage(named: "9D.png")!,
        UIImage(named: "9H.png")!,
        UIImage(named: "9S.png")!,
        UIImage(named: "10C.png")!,
        UIImage(named: "10D.png")!,
        UIImage(named: "10H.png")!,
        UIImage(named: "10S.png")!,
        UIImage(named: "JC.png")!,
        UIImage(named: "JD.png")!,
        UIImage(named: "JH.png")!,
        UIImage(named: "JS.png")!,
        UIImage(named: "QC.png")!,
        UIImage(named: "QD.png")!,
        UIImage(named: "QH.png")!,
        UIImage(named: "QS.png")!,
        UIImage(named: "KC.png")!,
        UIImage(named: "KD.png")!,
        UIImage(named: "KH.png")!,
        UIImage(named: "KS.png")!,
        UIImage(named: "AC.png")!,
        UIImage(named: "AD.png")!,
        UIImage(named: "AH.png")!,
        UIImage(named: "AS.png")!]
        let leftRandom = Int.random(in: 0..<52)
        var rightRandom = Int.random(in: 0..<52)
        while rightRandom == leftRandom {
            rightRandom = Int.random(in: 0..<13)
        }
        leftCard.image = cards[leftRandom]
        rightCard.image = cards[rightRandom]
        let leftScore = getCardScore(leftRandom)
        let rightScore = getCardScore(rightRandom)
        let player = leftScore + rightScore
        playerScore.text =
            String.init(player)
        let ai = Int.random(in: 5..<28)
        aiScore.text = String.init(ai)
        if player < ai {
            //player lost
            let alertLoss = UIAlertController(title: "Sorry", message:
                "You lost the game", preferredStyle: .alert)
            alertLoss.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertLoss, animated: true, completion: nil)
        } else if player == ai {
            //Its a draw
            let alertDraw = UIAlertController(title: "That's unlucky", message: "It's a draw", preferredStyle: .alert)
            alertDraw.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertDraw, animated: true, completion: nil)
        } else if player > ai {
            //player won
            let alertWin = UIAlertController(title: "Look at that", message: "You won \nCongratulations!", preferredStyle: .alert)
            alertWin.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertWin, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

