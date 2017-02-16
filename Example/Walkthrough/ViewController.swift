//
//  ViewController.swift
//  Walkthrough
//
//  Created by Matthew Rigdon on 02/16/2017.
//  Copyright (c) 2017 Matthew Rigdon. All rights reserved.
//

import UIKit
import Walkthrough

extension ViewController: WalkthroughDelegate {
    func textsForWalkthrough() -> [String] {
        return [
            "Demarcus Cousins is the best player on the Kings. He averages 28 points per game, 11 rebounds, and 5 assists. What numbers from a very talented player! Needs to learn to control his temper.",
            "Omri Casspi is a small forward who shot the 3 ball well last season, but has regressed this season from beyond the arc, as well as with overall minutes.",
            "Darren Collison is an underrated veteran point guard. With Rudy Gay out, Collison has stepped into a scorer role this season, and often provides the Kings with a much needed spark on that side of the ball. His quickness and ability to get to the basket and finish inside combined with his ability to shoot the 3 ball make him an underrated asset.",
            "Ty Lawson, signed to a one year contract late in free agency, has been a pleasant surprise this year for the Kings. After leaving Denver he had a few rough stretches with Houston and Indiana, partially due to some off-court antics. Fortunately, he has been just what the Kings needed for a PG off the bench.",
            "Ben McLemore has had a very disappointing 3 year career so far. Drafted very early, many saw him to be a potential superstar, but he has been far from that. Up until very recently he has shown very little confidence. Can he continue his solid play down the stretch?",
            "Kosta Koufos has been a solid front-court asset for the Kings on a good contract. He has been a more reliable asset than Willie Cauley Stein so far, but with Cauley Stein showing signs of improvement, don't be surprised if the Kings move him before the deadline.",
            "Willie Cauley Stein is the sophomore center out of Kentucky. Drafted 6th overall, many felt that was a reach for the raw big man. One thing he definitely has is athleticism. Needs to exert more of an effort on both sides of the ball."
        ]
    }
}

class ViewController: UIViewController {

    // MARK: - Properties
    
    var walkthrough: Walkthrough!
    
    // MARK: - Actions
    
    @IBAction func tappedNext(_ sender: Any) {
        walkthrough.next()
    }
    
    @IBAction func tappedPrev(_ sender: Any) {
        walkthrough.prev()
    }
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWalkthrough()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UI setup methods
    
    private func setupWalkthrough() {
        walkthrough = Walkthrough(width: view.bounds.width - 32, delegate: self)
        view.addSubview(walkthrough)
        NSLayoutConstraint(item: walkthrough, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 16).isActive = true
        NSLayoutConstraint(item: walkthrough, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 16).isActive = true
        NSLayoutConstraint(item: walkthrough, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -16).isActive = true
    }

}

