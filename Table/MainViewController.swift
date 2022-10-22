//
//  MainViewController.swift
//  AngelCoreData
//
//  Created by Noye Samuel on 09/10/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableDataView: UITableView!
    // MARK: - Variables
    let names: Array<String> = ["Arteta","St. Noye","Tetteh","Laxy"]
    // MARK: - Constants
   
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      //  tableView.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
       // tableDataView.delegate = self
        tableDataView.dataSource = self
        tableDataView.reloadData()
    }



        // MARK: - IBActions
        // MARK: - Custom Functions
            
}

// MARK: - Extension
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    private func numberOfSections(_ tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return names.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("countqwr:",names.count)
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        var name = names[indexPath.row]
        print(name)
        // Configure the cell...
        cell.nameLbl.text = name
        cell.ageLbl.text = "20"
        cell.genderLbl.text = "F"
        tableView.reloadData()
        return cell
    }
}
