//
//  roundPhotoViewController.swift
//  VisitBogor
//
//  Created by Ishaq Fikri Taufik on 20/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class roundPhotoViewController: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profilePhoto.layer.masksToBounds = true
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.width / 2
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
