//
//  ViewController.swift
//  GestureRecognizerProject
//
//  Created by Bedirhan Köse on 22.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var CityLabel: UILabel!
    
    var Ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        ImageView.addGestureRecognizer(gestureRecognizer)


    }
    @objc func changeImage() {
        
        
        if Ankara == false {
            ImageView.image = UIImage(named: "Ankara")
            CityLabel.text = "Ankara"
            Ankara = true
            
        }else {
            ImageView.image = UIImage(named: "Istanbul")
            CityLabel.text = "Istanbul"
            Ankara = false
        }
        
        
    }

}

