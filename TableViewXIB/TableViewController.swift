//
//  ViewController.swift
//  TableViewXIB
//
//  Created by Benjamin Inemugha on 16/02/2021.
//  Copyright © 2021 Techelope. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let data = ["Welcome to my Github", "I give help examples", "Have a nice day!"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell{
            cell.titleLbl.text = data[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }


}

