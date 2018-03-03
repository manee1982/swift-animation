//
//  ViewController.swift
//  swift-animation
//
//  Created by Smart Visions on 3/3/18.
//  Copyright © 2018 Smart Visions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomeScreenBackground: UIImageView!
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var marketName: UILabel!
    @IBOutlet weak var beginShopingTapped: CustomeButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set alpha for views to 0
        welcomeScreenBackground.alpha = 0
        welcomeText.alpha = 0
        marketName.alpha = 0
        beginShopingTapped.alpha = 0
    }
    
    // animation must be called in viewDidAppear function
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.welcomeScreenBackground.alpha = 1
        }) { (true) in
//            self.animateWelcomeText()
            UIView.animate(withDuration: 1, animations: {
                self.welcomeText.alpha = 1
            }) { (true) in
//                self.animateMarketName()
                UIView.animate(withDuration: 1, animations: {
                    self.marketName.alpha = 1
                }) { (true) in
//                    self.animateBeginShoingTapped()
                    UIView.animate(withDuration: 1) {
                        self.beginShopingTapped.alpha = 1
                    }
                }
            }
        }
    }
    
    func animateWelcomeText() {
        UIView.animate(withDuration: 1, animations: {
            self.welcomeText.alpha = 1
        }) { (true) in
            self.animateMarketName()
        }
    }
    
    func animateMarketName() {
        UIView.animate(withDuration: 1, animations: {
            self.marketName.alpha = 1
        }) { (true) in
            self.animateBeginShoingTapped()
        }
    }
    
    func animateBeginShoingTapped() {
        UIView.animate(withDuration: 1) {
            self.beginShopingTapped.alpha = 1
        }
    }

}

