//
//  ViewController.swift
//  TableMusicBands
//
//  Created by Diplomado on 18/05/24.
//

import UIKit

class ViewController: UIViewController {
    var Model = BandTableViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Model.getCountArray()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.accessoryType = .disclosureIndicator
        cell?.textLabel?.text = Model.getTitleArray(index: indexPath)
//        cell?.detailTextLabel?.text = Model.getDescriptionArray(index: indexPath)
        return cell!
    }
}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let albumScreenViewController = AlbumScreenViewController(nibName: "AlbumScreenViewController", bundle: nil)
        
        navigationController?.pushViewController(albumScreenViewController, animated: true)
    }
}
