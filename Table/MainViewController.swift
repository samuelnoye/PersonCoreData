//
//  MainViewController.swift
//  AngelCoreData
//
//  Created by Noye Samuel on 09/10/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    // MARK: - Variables
    let names: Array<String> = ["Angel","Nartekie","Tetteh","Laxy1"]
    // MARK: - Constants
   
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      //  tableView.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }



        // MARK: - IBActions
        // MARK: - Custom Functions
            
}

// MARK: - Extension
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count:",names.count)
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        var name = names[indexPath.row]
        
        // Configure the cell...
        cell.nameLbl.text = name
        cell.ageLbl.text = "20"
        cell.genderLbl.text = "F"
        tableView.reloadData()
        return cell
    }
}
