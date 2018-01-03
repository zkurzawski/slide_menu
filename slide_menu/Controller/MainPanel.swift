//
//  MainPanel.swift
//  slide_menu
//
//  Created by Zakary Kurzawski on 1/2/18.
//  Copyright © 2018 Zakary Kurzawski. All rights reserved.
//

import UIKit

class MainPanel: UIViewController {

    @IBOutlet weak var viewConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurredView: UIVisualEffectView!
    @IBOutlet weak var sideMenu: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurredView.layer.cornerRadius = 15
        sideMenu.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        sideMenu.layer.shadowOpacity = 1
        sideMenu.layer.shadowOffset = CGSize(width: 8, height: 0)
        
        viewConstraint.constant = -180
        
    
    }

    @IBAction func panCompleted(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            
            let translation = sender.translation(in: self.view).x
            
            if translation > 0 {
                if viewConstraint.constant < 10 {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                    })
                }
            } else {
                if viewConstraint.constant > -180 {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                    })
                }
            }
            
        } else if sender.state == .ended {
            if viewConstraint.constant < -100 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConstraint.constant = -180
                    self.view.layoutIfNeeded()
            })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConstraint.constant = 0
                    self.view.layoutIfNeeded()
                })
                }
            }
        }
}
