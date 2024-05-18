//
//  SongScreenViewController.swift
//  TableMusicBands
//
//  Created by Diplomado on 18/05/24.
//

import UIKit

class SongScreenViewController: UIViewController {
    var Model = SongTableViewModel()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
}

extension SongScreenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows: Int = 0
        if section == 0 {
             rows = Model.getCountArray()
        }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        cell?.accessoryType = .disclosureIndicator
        
        if indexPath.section == 0 {
            cell?.cellTextLabel?.text = Model.getTitleArray(index: indexPath)
        }
        
        return cell!
    }
}
