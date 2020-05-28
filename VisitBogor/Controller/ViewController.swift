//
//  ViewController.swift
//  VisitBogor
//
//  Created by Ishaq Fikri Taufik on 17/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var placeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Tour to Bogor!"
        placeTableView.dataSource = self
        placeTableView.delegate = self
        placeTableView.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier:
            "PlaceCell")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as! PlaceTableViewCell
        let place = places[indexPath.row]
        cell.namePlace.text = place.name
        cell.descPlace.text = place.desc
        cell.photoPlace.image = place.photo
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            places.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detail.place = places[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
