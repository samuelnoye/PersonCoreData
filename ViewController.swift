//
//  ViewController.swift
//  AngelCoreData
//
//  Created by Noye Samuel on 09/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }


}

