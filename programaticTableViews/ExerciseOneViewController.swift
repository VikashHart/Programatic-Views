//
//  ViewController.swift
//  programaticTableViews
//
//  Created by C4Q on 1/4/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ExerciseOneViewController: UIViewController {

    let exerciseOneView = ExerciseOneView()
//    let customView = CustomView(image: #imageLiteral(resourceName: "heart"), text: "heart", backgroundColor: .red, textColor: .black)
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .yellow
        view.addSubview(exerciseOneView)
    }

    

}

