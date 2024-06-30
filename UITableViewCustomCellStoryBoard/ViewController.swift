//
//  ViewController.swift
//  UITableViewCustomCellStoryBoard
//
//  Created by Abdul Hafiz Ramadan on 29/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    private let names = [
        "Abdul",
        "Hafiz",
        "Ramadan",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // Table Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row select at \(indexPath.row)")
    }
    
    // Table DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.myLabel.text = names[indexPath.row]
        cell.myImage.backgroundColor = .red
        
        return cell
    }
}

