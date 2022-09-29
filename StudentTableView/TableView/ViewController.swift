//
//  ViewController.swift
//  TableView
//
//  Created by Mac on 02/06/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    
    @IBOutlet weak var StudentTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        StudentTable.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
          return  10
        }
        else
        {
           return 15
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row%2 == 0
        {
        let cell = self.StudentTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "shweta"
            cell?.detailTextLabel?.text = "Labade"
        cell?.backgroundColor = .purple
        return cell ?? UITableViewCell()
    }
    else
    {
        let cell = self.StudentTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "M.Sc"
        cell?.detailTextLabel?.text = "computer science"
        cell?.backgroundColor = .systemGreen
        return cell ?? UITableViewCell()
        
    }

}
}
