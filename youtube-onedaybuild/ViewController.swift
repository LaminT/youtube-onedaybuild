//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Lamin Tamba on 09/08/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

