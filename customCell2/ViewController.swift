//
//  ViewController.swift
//  customCell2
//
//  Created by Nishanthan Baskaran on 3/7/20.
//  Copyright © 2020 Nishanthan Baskaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let name = ["nishi" , "gugsi", "zammy", "niveth", "Avishka"]
    let age = [23,23,23,23,23]
    let score = [0, 25, 60, 100, 100]
    var mark: String = ""

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        cell.lbl1.text = name[indexPath.row]
        cell.lbl3.text = getGrade(marks: score[indexPath.row])
        cell.ll2.text = String(score[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func getGrade(marks: Int) -> String {
        switch marks {
        case 70...100:
            return "Awesome"
        case 40...69:
            return "good"
        default:
            return "Fail"
        }
    }


}

