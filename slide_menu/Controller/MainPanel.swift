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
    
    }

}

