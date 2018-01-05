//
//  ExerciseOneView.swift
//  programaticTableViews
//
//  Created by C4Q on 1/4/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ExerciseOneView: UIView {

    //Four custom views
    
    lazy var pitonView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "pitons"), text: "The Pitons", backgroundColor: .green, textColor: .black)
        return view
    }()
    
    lazy var dragonView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "dragon"), text: "Dragon", backgroundColor: .yellow, textColor: .black)
        return view
    }()
    
    lazy var monkeyView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "monkey"), text: "Monkey", backgroundColor: .red, textColor: .black)
        return view
    }()
    
    lazy var heartView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "heart"), text: "Heart", backgroundColor: .blue, textColor: .white)
        return view
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupPitonView()
        setupDragonView()
        setupMonkeyView()
        setupHeartView()
    }
    
    
    private func setupPitonView() {
        addSubview(pitonView)
        pitonView.translatesAutoresizingMaskIntoConstraints = false
        pitonView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        //pitonView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        pitonView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        pitonView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        pitonView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setupDragonView() {
        addSubview(dragonView)
        dragonView.translatesAutoresizingMaskIntoConstraints = false
        dragonView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        //dragonView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        dragonView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        dragonView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        dragonView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setupMonkeyView() {
        addSubview(monkeyView)
        monkeyView.translatesAutoresizingMaskIntoConstraints = false
        monkeyView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        monkeyView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        monkeyView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        monkeyView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setupHeartView() {
        addSubview(heartView)
        heartView.translatesAutoresizingMaskIntoConstraints = false
        heartView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        heartView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        heartView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        heartView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    }
    
    
}
