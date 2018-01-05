//
//  CustomView.swift
//  programaticTableViews
//
//  Created by C4Q on 1/4/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.text = "insert text here"
        return label
    }()
    
    lazy var firstImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "placeholder-image")
        image.contentMode = .scaleAspectFit
        return image
    }()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    convenience init(image: UIImage, text: String, backgroundColor: UIColor, textColor: UIColor) {
        self.init(frame: UIScreen.main.bounds)
        self.firstImage.image = image
        self.firstLabel.text = text
        self.backgroundColor = backgroundColor
        self.firstLabel.textColor = textColor
        setupViews()
    }
    
    private func commonInit() {
        setupViews()
    }
    
    private func setupViews() {
        setupContainerView()
        setupNameLabel()
        setupImage()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.75).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
    }
    
    private func setupNameLabel() {
        addSubview(firstLabel)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        firstLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 16).isActive = true
    }
    
    private func setupImage() {
        addSubview(firstImage)
        firstImage.translatesAutoresizingMaskIntoConstraints = false
        firstImage.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        firstImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        firstImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor
            ).isActive = true
        firstImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
    }

}
