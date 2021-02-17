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
    

    //var data = ["Welcome to my github", "I hope you find this example useful", "Have a nice day"]
    var data = [[1,"Emzor Pharmaceutical","info@emzorpharma.com","+2347080606000","900.0000", ["nice", "baby", "boy"],["nice1", "baby1", "boy1"]],"Pencil"] as [Any]
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print (data.count)
        
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell{
            
            //cell.titleLbl.text = data[indexPath.row][indexPath.row - 1] as? String
            return cell
        }
        return UITableViewCell()
    }


}

