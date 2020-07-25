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
        let section1  = ["History","Setting","Hamada"]
        let section2  = ["LogOut"]
        menu.rows = [section1,section2]
        menu.selectionHandler = {indexPath in
            if indexPath.section == 0{
                switch indexPath.row {
                case 0:
                    print("History")
                case 1:
                    print("Setting")
                case 2:
                    print("Hamada")
                default:
                    print("Out Of Index")
                }
            }else{
                print("Log Out")
            }
        }
        self.present(menu, animated: true, completion: nil)
    }
}

