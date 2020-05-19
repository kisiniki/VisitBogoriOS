//
//  DetailViewController.swift
//  VisitBogor
//
//  Created by Ishaq Fikri Taufik on 18/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var namePlace: UILabel!
    @IBOutlet weak var photoPlace: UIImageView!
    @IBOutlet weak var descPlace: UILabel!
    
    var place: PlaceAttribute?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = place {
            photoPlace.image = result.photo
            namePlace.text = result.name
            descPlace.text = result.desc
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
