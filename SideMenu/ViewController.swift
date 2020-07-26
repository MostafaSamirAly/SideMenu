//
//  ViewController.swift
//  SideMenu
//
//  Created by Mostafa Samir on 7/25/20.
//  Copyright © 2020 Mostafa Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMenuAction(_ sender: Any) {
        let menu = MenuVC()
        menu.email    = "samir.mostafa868@gmail.com"
        menu.sections = ["Menu Items","Log Out"]
        let section1  = ["History","Setting","Profile","Notification"]
        let section2  = ["LogOut"]
        let images1   = ["history","setting","profile","notification"]
        let images2   = ["logout"]
        menu.rows = [section1,section2]
        menu.imagesName = [images1,images2]
        menu.selectionHandler = {indexPath in
            if indexPath.section == 0{
                switch indexPath.row {
                case 0:
                    print("History")
                case 1:
                    print("Setting")
                case 2:
                    print("Profile")
                case 3:
                    print("Notification")
                default:
                    print("Out Of Index")
                }
            }else{
                print("Log Out")
            }
        }
        presentView(menu: menu)
    }
    
    private func presentView(menu:UIViewController){
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        self.present(menu, animated: true, completion: nil)
    }
}

