//
//  ViewController.swift
//  Display Image Without UIImageView
//
//  Created by Pawan kumar on 07/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cuatomView: UIView = {
        let cView = UIView()
        cView.backgroundColor = .red
        cView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        cView.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
    
        //Creating Rounded Corners
        cView.layer.cornerRadius = 10
        
        //Adding Shadow Effects
        cView.layer.shadowOffset = CGSize(width: 5, height: 5)
        cView.layer.shadowOpacity = 0.7
        cView.layer.shadowRadius = 10
        cView.layer.shadowColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1).cgColor
        
        //Applying Borders
        cView.layer.borderColor = UIColor.green.cgColor
        cView.layer.borderWidth = 5
        
        //Displaying Images
        cView.layer.contents = UIImage(named: "tree")?.cgImage
        cView.layer.contentsGravity = CALayerContentsGravity.resize
        cView.layer.masksToBounds = true
        
        //Background Color and Opacity
        cView.layer.backgroundColor = UIColor.blue.cgColor
        cView.layer.opacity = 0.5
        
        return cView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(cuatomView)
    }


}

