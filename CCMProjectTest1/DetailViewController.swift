//
//  DetailViewController.swift
//  CCMProjectTest1
//
//  Created by Valentin Denis on 21/01/2019.
//  Copyright © 2019 Val. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var prefilledString : String?
    var listOfStrings: [String] = []
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addEntryButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        /*listOfStrings.append("Coucou")
        listOfStrings.append("Test")*/
        
        if let listFromUserDefaults = getFromUserDefaults() {
            listOfStrings = listFromUserDefaults
        }
        
        tableView.reloadData()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let prefilledStringLet = prefilledString {
            nameTextField.text = prefilledStringLet
        }
    }

    @IBAction func addEntryAction(_ sender: Any) {
        if let textFieldText = nameTextField.text, !textFieldText.isEmpty {
            if !listOfStrings.contains(textFieldText) {
                listOfStrings.append(textFieldText)
                tableView.reloadData()
                saveToUserDefaults()
            }
        }
    }
    
    private func saveToUserDefaults() {
        UserDefaults.standard.set(listOfStrings, forKey: "LIST_OF_STRINGS")
        
    }
    
    private func getFromUserDefaults() -> [String]? {
        if let list = UserDefaults.standard.object(forKey: "LIST_OF_STRINGS") as? [String] {
            return list
        }
        return nil
    }
}

extension DetailViewController: UITableViewDelegate {
    
}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfStrings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DetailTableViewCell = tableView.dequeueReusableCell(withIdentifier: "detailCellID", for: indexPath) as! DetailTableViewCell
        cell.fill(withString: listOfStrings[indexPath.row])
        return cell
    }
    
}
