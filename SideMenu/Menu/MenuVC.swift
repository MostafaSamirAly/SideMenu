//
//  MenuVC.swift
//  SideMenu
//
//  Created by Mostafa Samir on 7/25/20.
//  Copyright © 2020 Mostafa Samir. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet private weak var menuTable: UITableView!
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var emailLbl: UILabel!
    var sections = [String]()
    var rows = [[String]]()
    var selectionHandler:(_ index:IndexPath)->Void = {_ in }
    var email = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        // Do any additional setup after loading the view.
        emailLbl.text = email
    }
    
    private func setupTableView(){
        menuTable.register(MenuTableCell.self, forCellReuseIdentifier: "MenuCell")
        menuTable.delegate = self
        menuTable.dataSource = self
    }
    
    @IBAction func tapAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension MenuVC: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return sections[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return rows[section].count
        case 1:
            return rows[section].count
        case 2:
            return rows[section].count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuTableCell else{return UITableViewCell()}
        cell.setupCell(title: rows[indexPath.section][indexPath.row])
       
        return cell
    }
    
}
extension MenuVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectionHandler(indexPath)
    }
}

