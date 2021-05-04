//
//  GameViewController.swift
//  ikid
//
//  Created by Hailun Zhang on 5/4/21.
//  Joke: https://www.gamedesigning.org/video-game-jokes/
//  Extension: https://stackoverflow.com/questions/33632266/animate-text-change-of-uilabel


import UIKit

class GameViewController: UIViewController {

    var joke: String = "What is the national sport of Minecraft?"
    var ans: String = "Boxing."
    var flipped: Bool = false
    @IBOutlet weak var jokeLabel: UILabel!

    @IBAction func filp(_ sender: UIButton) {
        if let aLabel = jokeLabel {
            aLabel.pushTransition(0.4)
            if flipped {
                aLabel.text = joke
            } else {
                aLabel.text = ans
            }
            flipped = !flipped
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flipped = false
    }
}

extension UIView {
    func pushTransition(_ duration:CFTimeInterval) {
        let animation:CATransition = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
                                                            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.push
        animation.subtype = CATransitionSubtype.fromTop
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.push.rawValue)
    }
}

