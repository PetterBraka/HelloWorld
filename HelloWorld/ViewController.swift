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
    @IBAction func deal(_ sender: Any) {
        let cards: [UIImage] = [
        UIImage(named: "card2.png")!,
        UIImage(named: "card3.png")!,
        UIImage(named: "card4.png")!,
        UIImage(named: "card5.png")!,
        UIImage(named: "card6.png")!,
        UIImage(named: "card7.png")!,
        UIImage(named: "card8.png")!,
        UIImage(named: "card9.png")!,
        UIImage(named: "card10.png")!,
        UIImage(named: "card11.png")!,
        UIImage(named: "card12.png")!,
        UIImage(named: "card13.png")!,
        UIImage(named: "card14.png")!]
        let leftRandom = Int.random(in: 0..<13)
        var rightRandom = Int.random(in: 0..<13)
        while rightRandom == leftRandom {
            rightRandom = Int.random(in: 0..<13)
        }
        leftCard.image = cards[leftRandom]
        rightCard.image = cards[rightRandom]
        //sice the cards has a the minimum value of 2 I add 4. I need to add 4 because i im using two cards and then since the value of the random vals will be 2 less than the card its showing i need to add 4
        let player = leftRandom + 4 +  rightRandom
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
            let alertDraw = UIAlertController(title: "Thats unlucky", message: "It's a draw", preferredStyle: .alert)
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

